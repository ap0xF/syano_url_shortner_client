import 'package:bcrypt/bcrypt.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:syano_url_shortner_client/generated/auth/signup_login.pbgrpc.dart';
// import 'package:syano_url_shortner_client/login.dart';
import 'package:syano_url_shortner_client/main.dart';
import 'package:syano_url_shortner_client/user_email_provider.dart';

class SignupPage extends StatefulWidget {
  // final ValueNotifier<String?> userEmail;
  final UserEmailProvider userEmailProvider;
  const SignupPage(Set<dynamic> set,
      {Key? key, required this.userEmailProvider})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  late ClientChannel channel;
  late AuthServiceClient authService;

  bool isEmailValid(String email) {
    final RegExp regex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return regex.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    return password.length >= 8;
  }

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
                'Signup',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your first name',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your last name',
                  ),
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm your password',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final BuildContext currentContext =
                      context; // Capture the BuildContext
                  try {
                    final firstName = firstNameController.text;
                    final lastName = lastNameController.text;
                    final email = emailController.text;
                    final password = passwordController.text;
                    final confirmPassword = confirmPasswordController.text;
                    var passwordHash = BCrypt.hashpw(password,
                        BCrypt.gensalt()); // Hash the password with bcrypt

                    if (firstName.isEmpty ||
                        lastName.isEmpty ||
                        email.isEmpty ||
                        password.isEmpty ||
                        confirmPassword.isEmpty) {
                      throw Exception('All fields are required');
                    }

                    if (!isEmailValid(email)) {
                      throw Exception('Invalid email');
                    }

                    if (!isPasswordValid(password)) {
                      throw Exception(
                          'Password must be at least 8 characters long');
                    }
                    if (password != confirmPassword) {
                      throw Exception('Passwords do not match');
                    }

                    final request = SignupRequest()
                      ..firstName = firstName
                      ..lastName = lastName
                      ..email = email.toLowerCase()
                      ..passwordHash = passwordHash;
                    final response = await authService.signup(request);
                    if (response.success) {
                      // ignore: use_build_context_synchronously
                      Navigator.pushAndRemoveUntil(
                        currentContext,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (Route<dynamic> route) =>
                            false, // removes all previous routes
                      );
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(currentContext).showSnackBar(
                        const SnackBar(
                          content: Text('Signup successful. Please login now'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      throw Exception('Signup failed');
                    }
                  } catch (e) {
                    String errorMessage;
                    if (e is GrpcError) {
                      errorMessage = e.message ??
                          'Unknown error'; // Use a default message if e.message is null
                    } else {
                      errorMessage = e.toString();
                    }
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(currentContext).showSnackBar(
                      SnackBar(
                        content: Text(errorMessage),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Signup'),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Provider<UserEmailProvider>(
                                  create: (_) => UserEmailProvider(),
                                  child: Container(),
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
