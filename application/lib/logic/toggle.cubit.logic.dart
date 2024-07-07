import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleCubit extends Cubit<bool> {
  ToggleCubit() : super(false);

  void toggle() {
    emit(!state);
  }

  void on() {
    emit(true);
  }

  void off() {
    emit(false);
  }

  void set(bool value) {
    emit(value);
  }

  void toggleWith(bool value) {
    emit(!value);
  }
}
