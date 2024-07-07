part of 'appointments_bloc.dart';

@freezed
class AppointmentsState with _$AppointmentsState {
  const factory AppointmentsState.initial() = _Initial;
  const factory AppointmentsState.loading() = _Loading;
  const factory AppointmentsState.loaded({
    required List<Appointment> appointments,
    required num total,
    required num page,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory AppointmentsState.failure({required String message}) = _Failure;
}
