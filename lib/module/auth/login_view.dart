import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quota_pro/module/home/home_view.dart';
import 'auth_view_model.dart';

class LoginView extends StatelessWidget {
  static const String routeName = 'login_view';
  LoginView({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('QuotaPro Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login to QuotaPro',
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;
                var currentContext = context; // Store the current context
                bool isLoggedIn = await authViewModel.login(username, password);
                if (isLoggedIn) {
                  // Navigate to the home view after successful login
                  Navigator.pushReplacementNamed(currentContext, HomeView.routeName);
                } else {
                  // Show an error message or perform other actions for unsuccessful login
                }
              },
              child: const Text('Login'),
            ),
            if (authViewModel.isLoggedIn)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
