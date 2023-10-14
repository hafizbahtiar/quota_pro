import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<bool> login(String username, String password) async {
    // Implement your authentication logic here
    // For example, check username and password against a database
    // Simulate a network delay for demonstration purposes
    await Future.delayed(const Duration(seconds: 2));

    // Set _isLoggedIn based on authentication result
    _isLoggedIn = username == 'your_username' && password == 'your_password';

    notifyListeners();

    return _isLoggedIn;
  }

  Future<bool> autoLogin(String username, String password) async {
    // Implement your authentication logic here
    // For example, check username and password against a database
    // Simulate a network delay for demonstration purposes
    await Future.delayed(const Duration(seconds: 2));

    // Set _isLoggedIn based on authentication result
    _isLoggedIn = username == 'your_username' && password == 'your_password';

    notifyListeners();

    return _isLoggedIn;
  }
}
