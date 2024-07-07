import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/appointment.dart';

part 'appointments_event.dart';
part 'appointments_state.dart';
part 'appointments_bloc.freezed.dart';

class AppointmentsBloc extends Bloc<AppointmentsEvent, AppointmentsState> {
  AppointmentsBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_LoadMore>(_onLoadMore);
    on<_Edit>(_onEdit);
    on<_Delete>(_onDelete);
    on<_Create>(_onCreate);
  }

  Future<void> _onStarted(
      _Started event, Emitter<AppointmentsState> emit) async {
    emit(const AppointmentsState.loading());
    try {
      final List<Appointment> appointments = [
        Appointment(
          id: 1,
          title: 'Appointment 1',
          description: 'Description 1',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 2,
          title: 'Appointment 2',
          description: 'Description 2',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 3,
          title: 'Appointment 3',
          description: 'Description 3',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 4,
          title: 'Appointment 4',
          description: 'Description 4',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 5,
          title: 'Appointment 5',
          description: 'Description 5',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
      ];
      emit(AppointmentsState.loaded(
        appointments: appointments,
        total: appointments.length,
        page: 1,
        hasReachedMax: false,
      ));
    } catch (e) {
      emit(AppointmentsState.failure(message: e.toString()));
    }
  }

  Future<void> _onLoadMore(
      _LoadMore event, Emitter<AppointmentsState> emit) async {
    final old = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => appointments,
      orElse: () => [],
    );
    try {
      final List<Appointment> appointments = [
        Appointment(
          id: 6,
          title: 'Appointment 6',
          description: 'Description 6',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 7,
          title: 'Appointment 7',
          description: 'Description 7',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 8,
          title: 'Appointment 8',
          description: 'Description 8',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 9,
          title: 'Appointment 9',
          description: 'Description 9',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
        Appointment(
          id: 10,
          title: 'Appointment 10',
          description: 'Description 10',
          date: DateTime.now(),
          googleMeetUrl: 'https://meet.google.com/abc-defg-hij',
          done: false,
        ),
      ];
      emit(AppointmentsState.loaded(
        appointments: [...old, ...appointments],
        total: appointments.length,
        page: 1,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(AppointmentsState.failure(message: e.toString()));
    }
  }

  Future<void> _onEdit(_Edit event, Emitter<AppointmentsState> emit) async {
    final List<Appointment> old = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => appointments,
      orElse: () => [],
    );
    final num page = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => page,
      orElse: () => 1,
    );
    try {
      // edit appointment
      final List<Appointment> appointments = old.map((appointment) {
        if (appointment.id == event.id) {
          return appointment.copyWith(
            title: event.title,
            description: event.description,
            date: event.dateTime,
            googleMeetUrl: event.googleMeetUrl,
          );
        }
        return appointment;
      }).toList();

      emit(AppointmentsState.loaded(
        appointments: appointments,
        total: appointments.length,
        page: page,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(AppointmentsState.failure(message: e.toString()));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<AppointmentsState> emit) async {
    final List<Appointment> old = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => appointments,
      orElse: () => [],
    );
    final num page = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => page,
      orElse: () => 1,
    );
    try {
      // delete appointment
      final List<Appointment> appointments =
          old.where((appointment) => appointment.id != event.id).toList();

      emit(AppointmentsState.loaded(
        appointments: appointments,
        total: appointments.length,
        page: page,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(AppointmentsState.failure(message: e.toString()));
    }
  }

  Future<void> _onCreate(_Create event, Emitter<AppointmentsState> emit) async {
    final List<Appointment> old = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => appointments,
      orElse: () => [],
    );
    final num page = state.maybeWhen(
      loaded: (appointments, total, page, hasReachedMax) => page,
      orElse: () => 1,
    );
    try {
      final List<Appointment> appointments = [
        Appointment(
          id: old.length + 1,
          title: event.title,
          description: event.description,
          date: event.dateTime,
          googleMeetUrl: event.googleMeetUrl,
          done: false,
        ),
        ...old,
      ];

      emit(AppointmentsState.loaded(
        appointments: appointments,
        total: appointments.length,
        page: page,
        hasReachedMax: true,
      ));
    } catch (e) {
      emit(AppointmentsState.failure(message: e.toString()));
    }
  }
}
