import 'package:flutter/foundation.dart';

class UserEmailProvider with ChangeNotifier {
  final ValueNotifier<String?> userEmail = ValueNotifier<String?>(null);

   void updateUserEmail(String? email) {
    userEmail.value = email;
    notifyListeners();
  }
}