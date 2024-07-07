import 'package:app/core/const.dart';
import 'package:app/features/appointments/logic/bloc/appointments_bloc.dart';
import 'package:app/features/duaa/logic/duaa/duaa_cubit.dart';
import 'package:app/features/reminders/logic/reminders/reminders_bloc.dart';
import 'package:app/logic/auth/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/screens/islamic.screen.dart';
import '../../shared/widgets/navigations/appbar.widget.dart';
import '../../shared/widgets/navigations/bottom.navigationbar.widget.dart';
import 'cubit/navigation_cubit.dart';

class NavigationScreen extends StatefulWidget {
  static String routeName = '/layout';
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  void initState() {
    context.read<RemindersBloc>().add(const RemindersEvent.started());
    context.read<AppointmentsBloc>().add(const AppointmentsEvent.started());
    context.read<DuaaCubit>().start();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        NavigationCubit layout = NavigationCubit.get(context);
        return IslamicScaffold(
          appBar: CustomAppBar(
            title: layout.current.value == 2
                ? Text(
                    "${"home:hey".translate(context)} ${context.read<AuthBloc>().user.username} 👋🏽")
                : layout.current.value == 0
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LucideIcons.mailOpen,
                            size: 20.sp,
                          ),
                          SizedBox(width: kSpacingX1),
                          Text("notification:mine".translate(context)),
                        ],
                      )
                    : Text(layout.title),
          ),
          body: layout.currentScreen,
          bottomNavigationBar: CustomBottomNavigationBar(layout: layout),
        );
      },
    );
  }
}
