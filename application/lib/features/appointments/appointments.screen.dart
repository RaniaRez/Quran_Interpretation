import 'package:app/features/auth/core/user.type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/const.dart';
import '../../core/extension.dart';
import '../../logic/auth/auth_bloc.dart';
import '../../models/user/user.dart';
import '../../shared/screens/islamic.screen.dart';
import '../../shared/widgets/buttons/button.widget.dart';
import '../../shared/widgets/loading/loader.widget.dart';
import 'logic/bloc/appointments_bloc.dart';
import 'widgets/appointments.card.widget.dart';

class AppointmentsScreen extends StatefulWidget {
  static String routeName = '/appointments';
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_loadMore);
  }

  @override
  Widget build(BuildContext context) {
    User user = context.watch<AuthBloc>().user;

    return IslamicScaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "appointments:mine".translate(context),
                style: context.textTheme.headlineLarge,
              ),
              SizedBox(height: kSpacingX1),
              Text("appointments:welcome".translate(context),
                  style: context.textTheme.bodyMedium),
              SizedBox(height: kSpacingX2),
              if (user.type == UserTypes.teacher.value)
                Container(
                  margin: EdgeInsets.symmetric(vertical: kSpacingX2),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "appointments:create".translate(context),
                          suffixIcon: LucideIcons.calendar,
                          height: 55,
                          onPressed: () {
                            context
                                .read<AppointmentsBloc>()
                                .add(const AppointmentsEvent.started());
                          },
                        ),
                      ),
                      SizedBox(width: kSpacingX3),
                      Expanded(
                        child: CustomButton(
                          text: "appointments:create-note".translate(context),
                          suffixIcon: LucideIcons.plus,
                          height: 55,
                          onPressed: () {
                            context
                                .read<AppointmentsBloc>()
                                .add(const AppointmentsEvent.started());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: BlocBuilder<AppointmentsBloc, AppointmentsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Container(),
                      failure: (message) => Center(child: Text(message)),
                      loading: () => Center(child: Loader(size: 25.sp)),
                      loaded: (appointments, total, page, hasReachedMax) {
                        if (appointments.isEmpty) {
                          return Center(
                              child: Text(
                                  "appointments:empty".translate(context)));
                        }
                        return ListView.separated(
                          controller: controller,
                          shrinkWrap: true,
                          itemCount: appointments.length,
                          separatorBuilder: (context, index) =>
                              Divider(height: kSpacingX3),
                          itemBuilder: (context, index) {
                            return AppointmentCard(
                              appointment: appointments[index],
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loadMore() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      context.read<AppointmentsBloc>().add(const AppointmentsEvent.loadMore());
    }
  }
}
