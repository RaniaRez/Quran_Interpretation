import 'package:app/features/home/home.screen.dart';
import 'package:app/features/quran/quran.screen.dart';
import 'package:flutter/material.dart';

import '../features/auth/login.screen.dart';
import '../features/navigation/navigation.screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    LoginScreen.routeName: (context) => const LoginScreen(),
    NavigationScreen.routeName: (context) => const NavigationScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    QuranScreen.routeName: (context) => const QuranScreen(),
  };
}
