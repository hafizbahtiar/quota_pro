import 'package:flutter/material.dart';
import 'package:quota_pro/module/auth/login_view.dart';
import 'package:quota_pro/module/auth/splash_view.dart';
import 'package:quota_pro/module/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const SplashView();
        },
      );
    case LoginView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return LoginView();
        },
      );
       case HomeView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const HomeView();
        },
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Screen does not exist'),
            ),
          );
        },
      );
  }
}
