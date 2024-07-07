part of 'localizations_bloc.dart';

@freezed
class LocalizationsEvent with _$LocalizationsEvent {
  const factory LocalizationsEvent.changeLocale({required Locale locale}) =
      _ChangeLocale;
}
