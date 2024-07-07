part of 'appointments_bloc.dart';

@freezed
class AppointmentsEvent with _$AppointmentsEvent {
  const factory AppointmentsEvent.started() = _Started;
  const factory AppointmentsEvent.loadMore() = _LoadMore;
  const factory AppointmentsEvent.edit({
    required int id,
    required String title,
    required String description,
    required DateTime dateTime,
    required String googleMeetUrl,
  }) = _Edit;
  const factory AppointmentsEvent.delete({required int id}) = _Delete;
  const factory AppointmentsEvent.create({
    required String title,
    required String description,
    required DateTime dateTime,
    required String googleMeetUrl,
  }) = _Create;
}
