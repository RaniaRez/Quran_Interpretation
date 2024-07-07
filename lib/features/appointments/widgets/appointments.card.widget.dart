import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/features/appointments/logic/bloc/appointments_bloc.dart';
import 'package:app/features/appointments/models/appointment.dart';
import 'package:app/features/auth/core/user.type.dart';
import 'package:app/logic/auth/auth_bloc.dart';
import 'package:app/shared/utils/date.formatter.dart';
import 'package:app/shared/widgets/buttons/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../models/user/user.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});
  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    User user = context.watch<AuthBloc>().user;
    return Dismissible(
        key: Key(appointment.id.toString()),
        background: Container(
            color: kDanger,
            child: Row(
              children: [
                const Spacer(),
                const Icon(LucideIcons.trash, color: Colors.white),
                SizedBox(width: kSpacingX1),
              ],
            )),
        onDismissed: (direction) {
          if (direction == DismissDirection.endToStart) {
            context
                .read<AppointmentsBloc>()
                .add(AppointmentsEvent.delete(id: appointment.id));
          }
        },
        child: Container(
            width: context.width,
            padding: EdgeInsets.symmetric(
                horizontal: kSpacingX2, vertical: kSpacingX1),
            decoration: BoxDecoration(
              color: kGray.shade400,
              borderRadius: BorderRadius.circular(kSpacingX1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointment.title,
                  style: context.textTheme.headlineLarge!
                      .copyWith(color: textPrimary),
                ),
                SizedBox(height: kSpacingX1),
                Text(
                  appointment.description,
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: textPrimary),
                ),
                SizedBox(height: kSpacingX1),
                Text(
                  DateHelper.dateTimeDisplay(appointment.date),
                  style:
                      context.textTheme.bodySmall!.copyWith(color: textPrimary),
                ),
                SizedBox(height: kSpacingX2),
                Row(
                  children: [
                    if (user.type == UserTypes.teacher.value)
                      const Expanded(
                        child: CustomButton(
                          text: "appointments:teacher.edit",
                          height: 32,
                          suffixIcon: LucideIcons.edit,
                        ),
                      ),
                    if (user.type == UserTypes.student.value)
                      const Expanded(
                        child: CustomButton(
                          text: "appointments:student.confirm",
                          height: 32,
                          suffixIcon: LucideIcons.checkCheck,
                        ),
                      ),
                    SizedBox(width: kSpacingX2),
                    const Expanded(
                      child: CustomButton(
                        text: "appointments:join",
                        height: 32,
                        suffixIcon: LucideIcons.camera,
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
