part of 'reminders_bloc.dart';

@freezed
class RemindersState with _$RemindersState {
  const factory RemindersState.initial() = _Initial;
  const factory RemindersState.loading() = _Loading;
  const factory RemindersState.loaded({
    required List<Reminder> reminders,
    required num page,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory RemindersState.failure({required String message}) = _Failure;
}
