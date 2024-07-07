import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../logic/reminders/reminders_bloc.dart';
import '../model/reminder.dart';

class RemindersCard extends StatelessWidget {
  const RemindersCard({super.key, required this.reminder});
  final Reminder reminder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => context
            .read<RemindersBloc>()
            .add(RemindersEvent.reminderRead(reminder)),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: !reminder.read ? kPrimary.shade600 : kPrimary,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      reminder.title,
                      style: context.textTheme.headlineMedium,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    DateFormat('dd/MM/yyyy').format(reminder.timestamp),
                    style: context.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(reminder.body, style: context.textTheme.bodyMedium),
            ],
          ),
        ));
  }
}
