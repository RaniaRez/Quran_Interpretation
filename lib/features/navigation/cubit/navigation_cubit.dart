import 'package:app/features/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

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
  Widget get screen {
    switch (this) {
      case AppScreen.home:
        return const HomeScreen();
      case AppScreen.notification:
        return const SizedBox.expand();
      case AppScreen.duaa:
        return const SizedBox.expand();
      case AppScreen.leaderboard:
        return const SizedBox.expand();
      case AppScreen.leaderboard:
        return const SizedBox.expand();
      default:
        return const SizedBox.shrink();
    }
  }
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.home());

  static NavigationCubit get(context) => BlocProvider.of(context);

  AppScreen current = AppScreen.home;

  Widget currentScreen = AppScreen.home.screen;

  String title = 'home';

  void change(int index) {
    switch (index) {
      case 0:
        notification();
        break;
      case 1:
        duaa();
        break;
      case 2:
        home();
        break;
      case 3:
        chat();
        break;
      case 4:
        leaderboard();
        break;
    }
  }

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
