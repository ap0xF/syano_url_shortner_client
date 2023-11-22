import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:syano_url_shortner_client/generated/auth/signup_login.pbgrpc.dart';
import 'package:syano_url_shortner_client/main.dart';
import 'package:syano_url_shortner_client/signup.dart';
import 'package:bcrypt/bcrypt.dart';
import 'package:syano_url_shortner_client/user_email_provider.dart';

class LoginPage extends StatefulWidget {
  final UserEmailProvider userEmailProvider;
  const LoginPage({Key? key, required this.userEmailProvider})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late ClientChannel channel;
  late AuthServiceClient authService;

  @override
  void initState() {
    super.initState();
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    authService = AuthServiceClient(channel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final email = emailController.text;
                    final password = passwordController.text;
                    final request = LoginRequest()..email = email.toLowerCase();
                    final response = await authService.login(request);

                    if (BCrypt.checkpw(password, response.hash)) {
                      // ignore: use_build_context_synchronously
                      Provider.of<UserEmailProvider>(context, listen: false)
                          .updateUserEmail(email);
                      // ignore: use_build_context_synchronously
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (route) =>
                            false, // this makes sure all previous routes are removed
                      );
                    } else {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid email or password'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                    // Handle the response
                  } catch (e) {
                    String errorMessage;
                    if (e is GrpcError) {
                      errorMessage = e.message ??
                          'Unknown error'; // Use a default message if e.message is null
                    } else {
                      errorMessage = e.toString();
                    }
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(errorMessage),
                        duration: const Duration(seconds: 3),
                      ),
                    );
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Login'),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(
                        const <dynamic>{},
                        userEmailProvider: widget.userEmailProvider,
                      ),
                    ),
                  );
                },
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Signup',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
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
                      ),
                    ],
                  ),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
