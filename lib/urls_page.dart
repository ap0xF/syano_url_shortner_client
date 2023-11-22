import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:syano_url_shortner_client/generated/syano/syano_url_shortener.pbgrpc.dart';
import 'package:syano_url_shortner_client/user_email_provider.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class UrlsPage extends StatefulWidget {
  const UrlsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UrlsPageState createState() => _UrlsPageState();
}

class _UrlsPageState extends State<UrlsPage> {
  bool hover = false; // Initialize hover state
  List<String> urls = []; // Initialize as empty list

  @override
  void initState() {
    super.initState();
    fetchUrls(); // Fetch the URLs when the widget is initialized
  }

  Future<void> fetchUrls() async {
    final userEmail =
        Provider.of<UserEmailProvider>(context, listen: false).userEmail.value;
    // if (userEmail.isEmpty) {
    //   print('User email is empty');
    //   return;
    // }

    final channel = ClientChannel(
      'localhost', // Replace with your server address
      port: 50051, // Replace with your server port
      options: const ChannelOptions(
        credentials: ChannelCredentials
            .insecure(), // Use secure credentials in production!
      ),
    );

    final client = UrlServiceClient(channel);

    final request = UserEmail()..email = userEmail!; // current user email

    try {
      await for (var response in client.getAllUrlsOfUser(request)) {
        // ignore: avoid_print
        print('Received response: $response'); // Print the response
        setState(() {
          urls.add(
              "localhost:8080/${response.shortUrl}"); // Assuming each response has a single URL
        });
      }
    } catch (e) {
      // ignore: avoid_print
      print('Caught error: $e');
    }

    await channel.shutdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My URLs'),
      ),
      body: ListView.separated(
        itemCount: urls.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 10), // Add space between URLs
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Text('${index + 1}. '), // Auto numbering
                Flexible(
                  child: InkWell(
                    child: Text(
                      urls[index],
                      style: const TextStyle(color: Colors.blue),
                    ),
                    onTap: () async {
                      String url = urls[index];
                      if (url.startsWith('localhost')) {
                        url =
                            'http:/192.168.28.22:8080${url.substring('localhost:8080'.length)}';
                      }
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                const SizedBox(width: 10), // Add a gap of 10 pixels
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) => setState(() => hover = true),
                  onExit: (_) => setState(() => hover = false),
                  child: Transform.scale(
                    scale: hover ? 1.2 : 1.0, // Change the size when hovered
                    child: Material(
                      color: Colors.transparent, // Set color to transparent
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          String url = urls[index];
                          String email = Provider.of<UserEmailProvider>(context,
                                      listen: false)
                                  .userEmail
                                  .value ??
                              '';

                          final channel = ClientChannel(
                            'localhost', // Replace with your server address
                            port: 50051, // Replace with your server port
                            options: const ChannelOptions(
                              credentials: ChannelCredentials
                                  .insecure(), // Use secure credentials in production!
                            ),
                          );

                          final client = UrlServiceClient(channel);

                          final request = DeleteUrlRequest()
                            ..shortUrl = url
                            ..email = email;

                          try {
                            await client.deleteUrl(request);
                            setState(() {
                              urls.removeAt(
                                  index); // Remove the URL from the list
                            });
                          } catch (e) {
                            // ignore: avoid_print
                            print('Caught error: $e');
                          }

                          await channel.shutdown();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
