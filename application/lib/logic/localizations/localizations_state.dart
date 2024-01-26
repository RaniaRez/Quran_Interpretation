part of 'localizations_bloc.dart';

@freezed
abstract class LocalizationsState with _$LocalizationsState {
  const factory LocalizationsState({required Locale locale}) =
      _LocalizationState;
}
