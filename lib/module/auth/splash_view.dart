import 'package:flutter/material.dart';
import 'login_view.dart'; // Import your LoginView here

class SplashView extends StatefulWidget {
  static const String routeName = 'splash_view';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation has completed, wait for 3 seconds and navigate to the LoginView
        Future.delayed(Duration(seconds: 3), () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginView()));
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animationController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your App Name',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
