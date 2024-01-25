import 'package:flutter/material.dart';

import '../features/auth/login.screen.dart';
import '../features/navigation/navigation.screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    LoginScreen.routeName: (context) => const LoginScreen(),
    NavigationScreen.routeName: (context) => const NavigationScreen(),
  };
}
