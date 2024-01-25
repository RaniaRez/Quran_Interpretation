import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'localizations_state.dart';
part 'localizations_event.dart';
part 'localizations_bloc.freezed.dart';

class LocalizationsBloc extends Bloc<LocalizationsEvent, LocalizationsState> {
  LocalizationsBloc()
      : super(const LocalizationsState(locale: Locale('fr', 'FR'))) {
    on<LocalizationsEvent>((event, emit) {
      event.map(
        changeLocale: (e) => emit(LocalizationsState(locale: e.locale)),
      );
    });
  }

  static LocalizationsBloc of(BuildContext context) {
    return BlocProvider.of<LocalizationsBloc>(context);
  }

  static LocalizationsState stateOf(BuildContext context) {
    return BlocProvider.of<LocalizationsBloc>(context).state;
  }

  static void changeLocale(BuildContext context, Locale locale) {
    BlocProvider.of<LocalizationsBloc>(context)
        .add(LocalizationsEvent.changeLocale(locale: locale));
  }
}
