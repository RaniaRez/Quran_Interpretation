import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/utils/date.formatter.dart';


part 'time_range_state.dart';
part 'time_range_cubit.freezed.dart';

enum SelectedDate { start, end }

class TimeRangeCubit extends Cubit<TimeRangeState> {
  TimeRangeCubit()
      : super(TimeRangeState.initial(
          startDate: DateTime(DateTime.now().year, 1, 1),
          endDate: DateTime.now(),
          selectedDate: SelectedDate.start,
        ));

  void setStartTime(DateTime dateTime) {
    emit(TimeRangeState.initial(
      startDate: dateTime,
      endDate: state.endDate,
      selectedDate: SelectedDate.start,
    ));
  }

  void setEndTime(DateTime dateTime) {
    emit(TimeRangeState.initial(
      startDate: state.startDate,
      endDate: dateTime,
      selectedDate: SelectedDate.end,
    ));
  }

  void validate() {
    emit(
      TimeRangeState.loaded(
          startDate: state.startDate,
          endDate: state.endDate,
          validatedStartDate: state.startDate,
          validatedEndDate: state.endDate,
          selectedDate: state.selectedDate),
    );
  }

  void reset(BuildContext context) {
    emit(TimeRangeState.initial(
      startDate: DateTime(DateTime.now().year, 1, 1),
      endDate: DateTime.now(),
      validatedStartDate: null,
      validatedEndDate: null,
      selectedDate: SelectedDate.start,
    ));
  }

  void setSelectedDate(SelectedDate selectedDate) {
    emit(TimeRangeState.loaded(
      startDate: state.startDate,
      endDate: state.endDate,
      selectedDate: selectedDate,
    ));
  }

  static TimeRangeCubit get(context) => BlocProvider.of(context);
}
