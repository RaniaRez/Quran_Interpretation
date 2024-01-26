import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/reminder.dart';

part 'reminders_event.dart';
part 'reminders_state.dart';
part 'reminders_bloc.freezed.dart';

class RemindersBloc extends Bloc<RemindersEvent, RemindersState> {
  RemindersBloc() : super(const _Initial()) {
    on<_Started>(_started);
    on<_LoadMore>(loadMore);
    on<_ReminderRead>(_reminderRead);
  }

  Future<void> _started(_Started event, Emitter<RemindersState> emit) async {
    emit(const RemindersState.loading());
    try {
      final List<Reminder> reminders = [
        Reminder(
          id: 1,
          title: 'Reminder',
          body:
              'Your revision session for “Surah Al Mulk” with teacher Muhammed Ahmed will start in one hour',
          timestamp: DateTime.now(),
          read: false,
        ),
        Reminder(
          id: 2,
          title: 'Note from Muhammed',
          body:
              'Salam Rania! Don\'t forget to revise Surah Al-Mulk this week and highlight all the parts that you didn\'t understand so we can discuss them in our upcoming session.',
          timestamp: DateTime.now().subtract(const Duration(days: 1)),
          read: false,
        ),
        Reminder(
          id: 3,
          title: 'Teaching request',
          body:
              'Salam Rania! Huda Salem requested you to be her teacher. Please review her request.',
          timestamp: DateTime.now().subtract(const Duration(days: 2)),
          read: true,
        ),
      ];
      emit(RemindersState.loaded(
        reminders: reminders,
        page: 1,
        hasReachedMax: false,
      ));
    } catch (e) {
      emit(RemindersState.failure(message: e.toString()));
    }
  }

  Future<void> loadMore(_LoadMore event, Emitter<RemindersState> emit) async {
    try {
      final List<Reminder> reminders = [
        Reminder(
          id: 1,
          title: 'Reminder',
          body:
              'Your revision session for “Surah Al Mulk” with teacher Muhammed Ahmed will start in one hour',
          timestamp: DateTime.now(),
          read: false,
        ),
        Reminder(
          id: 2,
          title: 'Note from Muhammed',
          body:
              'Salam Rania! Don\'t forget to revise Surah Al-Mulk this week and highlight all the parts that you didn\'t understand so we can discuss them in our upcoming session.',
          timestamp: DateTime.now().subtract(const Duration(days: 1)),
          read: false,
        ),
        Reminder(
          id: 3,
          title: 'Teaching request',
          body:
              'Salam Rania! Huda Salem requested you to be her teacher. Please review her request.',
          timestamp: DateTime.now().subtract(const Duration(days: 2)),
          read: true,
        ),
      ];
      emit(RemindersState.loaded(
        reminders: reminders,
        page: 1,
        hasReachedMax: false,
      ));
    } catch (e) {
      emit(RemindersState.failure(message: e.toString()));
    }
  }

  FutureOr<void> _reminderRead(
      _ReminderRead event, Emitter<RemindersState> emit) {
    try {
      final List<Reminder> reminders = state.maybeWhen(
        orElse: () => [],
        loaded: (reminders, page, hasReachedMax) => reminders,
      );
      final read = reminders.map((e) {
        if (e.id == event.reminder.id) {
          return e.copyWith(read: true);
        }
        return e;
      }).toList();
      emit(RemindersState.loaded(
        reminders: read,
        page: 1,
        hasReachedMax: false,
      ));
    } catch (e) {
      emit(RemindersState.failure(message: e.toString()));
    }
  }
}
