import 'package:flutter/material.dart';
import 'package:syano_url_shortner_client/main.dart';
import 'package:syano_url_shortner_client/urls_page.dart';

class UserMenu extends StatefulWidget {
  final ValueNotifier<String?> userEmail;

  const UserMenu({Key? key, required this.userEmail}) : super(key: key);

  @override
  _UserMenuState createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: widget.userEmail,
      builder: (context, email, child) {
        if (email != null && email.isNotEmpty) {
          return PopupMenuButton<String>(
            offset: const Offset(0, kToolbarHeight),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'View My Urls',
                child: Text('View My Urls', style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem<String>(
                value: 'Logout',
                child: Text('Logout', style: TextStyle(color: Colors.white)),
              ),
            ],
            onSelected: (String newValue) {
              if (newValue == 'View My Urls') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UrlsPage()), // Removed userEmail parameter
                );
              } else if (newValue == 'Logout') {
                widget.userEmail.value = null;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              }
            },
            color: Theme.of(context).primaryColor,
            child: SizedBox(
              height: double.infinity,
              child: Center(child: Text(email)),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}