import '../../../core/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';
import '../../../logic/time.range/time_range_cubit.dart';
import '../../utils/date.formatter.dart';

class TimeIntervalPicker extends StatelessWidget {
  const TimeIntervalPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381.sp,
      width: context.width,
      padding: EdgeInsets.all(kSpacingX2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.vertical(bottom: Radius.circular(kSpacingX4)),
      ),
      child: BlocBuilder<TimeRangeCubit, TimeRangeState>(
        builder: (context, state) {
          TimeRangeCubit timeRange = TimeRangeCubit.get(context);
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      timeRange.reset(context);
                      context.pop();
                    },
                    child: Text(
                      'general:cancel'.translate(context),
                      style: context.textTheme.titleMedium!
                          .copyWith(color: textSecondary),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'general:search-by-date'.translate(context),
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      timeRange.validate();
                      context.pop();
                    },
                    child: Text(
                      'general:search'.translate(context),
                      style: context.textTheme.titleMedium!
                          .copyWith(color: surfaceBrand),
                    ),
                  )
                ],
              ),
              SizedBox(height: kSpacingX3),
              Text(
                'general:select-date-range'.translate(context),
                style: context.textTheme.bodyMedium!
                    .copyWith(color: textSecondary),
              ),
              SizedBox(height: kSpacingX3),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () =>
                          timeRange.setSelectedDate(SelectedDate.start),
                      child: Container(
                        padding: EdgeInsets.all(kSpacingX1),
                        decoration: BoxDecoration(
                          color: surfacePrimary,
                          borderRadius: BorderRadius.circular(kSpacingX1),
                          border: Border.all(color: borderTernary),
                        ),
                        child: Center(
                          child: Text(
                            DateHelper.ddMMYYYY(
                                state.validatedStartDate ?? state.startDate),
                            style: context.textTheme.headlineMedium!.copyWith(
                                color: state.selectedDate == SelectedDate.start
                                    ? surfaceOrange
                                    : textSecondary),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: kSpacingX2),
                  Text(
                    "general:to".translate(context),
                    style: context.textTheme.bodyMedium!
                        .copyWith(color: textSecondary),
                  ),
                  SizedBox(width: kSpacingX2),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => timeRange.setSelectedDate(SelectedDate.end),
                      child: Container(
                        padding: EdgeInsets.all(kSpacingX1),
                        decoration: BoxDecoration(
                          color: surfacePrimary,
                          borderRadius: BorderRadius.circular(kSpacingX1),
                          border: Border.all(color: borderTernary),
                        ),
                        child: Center(
                          child: Text(
                            DateHelper.ddMMYYYY(
                                state.validatedEndDate ?? state.endDate),
                            style: context.textTheme.headlineMedium!.copyWith(
                                color: state.selectedDate == SelectedDate.end
                                    ? surfaceOrange
                                    : textSecondary),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: kSpacingX3),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: state.selectedDate == SelectedDate.start
                      ? state.validatedStartDate ?? state.startDate
                      : state.validatedEndDate ?? state.endDate,
                  onDateTimeChanged: (DateTime newDateTime) {
                    if (state.selectedDate == SelectedDate.start &&
                        newDateTime.isBefore(state.endDate)) {
                      timeRange.setStartTime(newDateTime);
                    } else {
                      timeRange.setEndTime(newDateTime);
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
