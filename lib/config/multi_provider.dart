import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quota_pro/module/auth/auth_view_model.dart';

MultiProvider buildProviders(Widget child) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthViewModel()),
      // Add more providers if needed
    ],
    child: child,
  );
}
