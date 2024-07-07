part of 'time_range_cubit.dart';

@freezed
class TimeRangeState with _$TimeRangeState {
  const factory TimeRangeState.initial({
    required DateTime startDate,
    required DateTime endDate,
    DateTime? validatedStartDate,
    DateTime? validatedEndDate,
    required SelectedDate selectedDate,
  }) = _Initial;
  const factory TimeRangeState.loaded({
    required DateTime startDate,
    required DateTime endDate,
    DateTime? validatedStartDate,
    DateTime? validatedEndDate,
    required SelectedDate selectedDate,
  }) = _Loaded;
  const factory TimeRangeState.error(String message) = _Error;
}

extension TimeRangeStateExtensions on TimeRangeState {
  DateTime get startDate {
    return when(
      initial: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedStartDate ?? startDate,
      loaded: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedStartDate ?? startDate,
      error: (message) => DateHelper.parse("01/01/2010 00:00:00"),
    );
  }

  DateTime get endDate {
    return when(
      initial: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedEndDate ?? endDate,
      loaded: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedEndDate ?? endDate,
      error: (message) => DateTime.now(),
    );
  }

  DateTime? get validatedStartDate {
    return when(
      initial: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedStartDate,
      loaded: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedStartDate,
      error: (message) => null,
    );
  }

  DateTime? get validatedEndDate {
    return when(
      initial: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedEndDate,
      loaded: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          validatedEndDate,
      error: (message) => null,
    );
  }

  SelectedDate get selectedDate {
    return when(
      initial: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          selectedDate,
      loaded: (startDate, endDate, validatedStartDate, validatedEndDate,
              selectedDate) =>
          selectedDate,
      error: (message) => SelectedDate.start,
    );
  }
}
