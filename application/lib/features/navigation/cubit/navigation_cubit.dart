import 'package:app/features/duaa/duaa.screen.dart';
import 'package:app/features/home/home.screen.dart';
import 'package:app/features/reminders/reminders.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

enum AppScreen {
  notification(0, "notification"),
  duaa(1, "duaa"),
  home(2, "home"),
  chat(3, "chat"),
  leaderboard(4, "leaderboard"),
  ;

  const AppScreen(this.value, this.name);
  final num value;
  final String name;
}

extension AppScreensExtension on AppScreen {
  Widget get screen => switch (this) {
        AppScreen.home => const HomeScreen(),
        AppScreen.notification => const RemindersScreen(),
        AppScreen.duaa => const DuaaScreen(),
        AppScreen.leaderboard => const SizedBox.expand(),
        _ => const SizedBox.shrink(),
      };
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.home());

  static NavigationCubit get(context) => BlocProvider.of(context);

  AppScreen current = AppScreen.home;

  Widget currentScreen = AppScreen.home.screen;

  String title = 'home';

  void change(int index) => switch (index) {
        0 => notification(),
        1 => duaa(),
        2 => home(),
        3 => chat(),
        4 => leaderboard(),
        _ => null,
      };

  void notification() {
    current = AppScreen.notification;
    currentScreen = AppScreen.notification.screen;
    title = AppScreen.notification.name;
    emit(const NavigationState.notification());
  }

  void duaa() {
    current = AppScreen.duaa;
    currentScreen = AppScreen.duaa.screen;
    title = AppScreen.duaa.name;
    emit(const NavigationState.duaa());
  }

  void home() {
    current = AppScreen.home;
    currentScreen = AppScreen.home.screen;
    title = AppScreen.home.name;
    emit(const NavigationState.home());
  }

  void chat() {
    current = AppScreen.chat;
    currentScreen = AppScreen.chat.screen;
    title = AppScreen.chat.name;
    emit(const NavigationState.chat());
  }

  void leaderboard() {
    current = AppScreen.leaderboard;
    currentScreen = AppScreen.leaderboard.screen;
    title = AppScreen.leaderboard.name;
    emit(const NavigationState.leaderboard());
  }
}
