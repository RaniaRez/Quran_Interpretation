import 'package:app/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/extension.dart';
import '../../shared/widgets/loading/loader.widget.dart';
import 'logic/reminders/reminders_bloc.dart';
import 'widgets/reminders.card.widget.dart';

class RemindersScreen extends StatelessWidget {
  static String routeName = '/reminders';
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
        child: BlocBuilder<RemindersBloc, RemindersState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Container(),
              failure: (message) => Center(child: Text(message)),
              loading: () => Center(child: Loader(size: 25.sp)),
              loaded: (reminders, page, hasReachedMax) {
                if (reminders.isEmpty) {
                  return Center(
                      child: Text("reminders:empty".translate(context)));
                }
                return ListView.separated(
                  itemCount: reminders.length,
                  separatorBuilder: (context, index) =>
                      Divider(height: kSpacingX2),
                  itemBuilder: (context, index) {
                    return RemindersCard(reminder: reminders[index]);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
