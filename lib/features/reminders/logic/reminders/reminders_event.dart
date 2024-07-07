part of 'reminders_bloc.dart';

@freezed
class RemindersEvent with _$RemindersEvent {
  const factory RemindersEvent.started() = _Started;
  const factory RemindersEvent.loadMore() = _LoadMore;
  const factory RemindersEvent.refresh() = _Refresh;
  const factory RemindersEvent.reminderRead(Reminder reminder) = _ReminderRead;
}
