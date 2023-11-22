import 'package:flutter/material.dart';
import 'package:syano_url_shortner_client/login.dart';
import 'grpc_client.dart';
import 'signup.dart';
import 'user_menu.dart';
import 'package:syano_url_shortner_client/user_email_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserEmailProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GrpcClient client;
  final TextEditingController inputController = TextEditingController();
  final TextEditingController outputController = TextEditingController();

  Future<void>? initFuture;

  Future<bool> isUrlValid(String url) async {
    try {
      final response = await http.head(Uri.parse(url));
      return response.statusCode < 400; // valid status code
    } catch (_) {
      return false; // invalid URL
    }
  }

  @override
  void initState() {
    super.initState();
    client = GrpcClient();
    client.initialize(); // Add this line
  }

  @override
  Widget build(BuildContext context) {
    final userEmailProvider = Provider.of<UserEmailProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syano URL Shortener'),
        actions: <Widget>[
          ValueListenableBuilder<String?>(
            valueListenable: userEmailProvider.userEmail,
            builder: (context, value, child) {
              if (value == null) {
                return Row(
                  children: [
                    Builder(
                      builder: (context) => ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(
                                const <dynamic>{},
                                userEmailProvider:
                                    Provider.of<UserEmailProvider>(context,
                                        listen: false),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Signup'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add a gap of 10 pixels
                    Builder(
                      builder: (context) => ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(
                                userEmailProvider:
                                    Provider.of<UserEmailProvider>(context,
                                        listen: false),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Login'),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return UserMenu(
                  userEmail: userEmailProvider.userEmail,
                ); // Use UserMenu widget here
              }
            },
          ),
          const SizedBox(width: 20), // Add a gap of 10 pixels
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: inputController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the long URL to be shortened',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final longUrl = inputController.text;
                  if (await isUrlValid(longUrl)) {
                    // URL is valid, proceed with your logic
                    try {
                      final shortUrl = await client.shortenUrl(longUrl,
                          userEmail: userEmailProvider.userEmail.value);
                      outputController.text = shortUrl;
                    } catch (e) {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.toString()),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    }
                  } else {
                    // URL is not valid, show an error message
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid URL'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Shorten'),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: outputController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "You'll get your short URL here",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
