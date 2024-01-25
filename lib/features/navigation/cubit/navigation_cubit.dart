import 'package:app/features/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

enum AppScreen {
  home(0),
  medicaments(1),
  orders(2),
  card(3),
  menu(4);

  const AppScreen(this.value);
  final num value;
}

extension AppScreensExtension on AppScreen {
  Widget get screen {
    switch (this) {
      case AppScreen.home:
        return const HomeScreen();
      case AppScreen.medicaments:
        return const SizedBox.expand();
      case AppScreen.orders:
        return const SizedBox.expand();
      case AppScreen.card:
        return const SizedBox.expand();
      case AppScreen.menu:
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
        home();
        break;
      case 1:
        medicaments();
        break;
      case 2:
        orders();
        break;
      case 3:
        card();
        break;
      case 4:
        menu();
        break;
    }
  }

  void home() {
    current = AppScreen.home;
    currentScreen = AppScreen.home.screen;
    title = 'home';
    emit(const NavigationState.home());
  }

  void medicaments() {
    current = AppScreen.medicaments;
    currentScreen = AppScreen.medicaments.screen;
    title = 'medicaments';
    emit(const NavigationState.medicaments());
  }

  void orders() {
    current = AppScreen.orders;
    currentScreen = AppScreen.orders.screen;
    title = 'orders';
    emit(const NavigationState.orders());
  }

  void card() {
    current = AppScreen.card;
    currentScreen = AppScreen.card.screen;
    title = 'card';
    emit(const NavigationState.card());
  }

  void menu() {
    current = AppScreen.menu;
    currentScreen = AppScreen.menu.screen;
    title = 'menu';
    emit(const NavigationState.menu());
  }
}
