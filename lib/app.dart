import 'package:flutter/material.dart';
import 'package:quota_pro/config/generate_route.dart';
import 'package:quota_pro/module/auth/splash_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      theme: ThemeData(
        // primaryColor: Colors.brown[100], // Change this to your desired primary color
        // You can also customize other properties of the theme here
        appBarTheme: const AppBarTheme(
          // backgroundColor: Colors.brown[100], // Set the app bar background color
          // You can also customize other app bar properties here
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SplashView(),
    );
  }
}
