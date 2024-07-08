import 'package:app/features/appointments/appointments.screen.dart';
import 'package:app/features/home/home.screen.dart';
import 'package:app/features/quran/quran.screen.dart';
import 'package:app/features/reminders/reminders.screen.dart';
import 'package:app/features/surat/lessson.screen.dart';
import 'package:app/features/surat/surat.screen.dart';
import 'package:flutter/material.dart';

import '../features/auth/login.screen.dart';
import '../features/navigation/navigation.screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    LoginScreen.routeName: (_) => const LoginScreen(),
    NavigationScreen.routeName: (_) => const NavigationScreen(),
    HomeScreen.routeName: (_) => const HomeScreen(),
    QuranScreen.routeName: (_) => const QuranScreen(),
    SurahScreen.routeName: (_) => const SurahScreen(),
    SurahLessonScreen.routeName: (_) => const SurahLessonScreen(),
    RemindersScreen.routeName: (_) => const RemindersScreen(),
    AppointmentsScreen.routeName: (_) => const AppointmentsScreen(),
  };
}
