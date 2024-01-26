import 'package:app/logic/auth/auth_bloc.dart';

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
                : null,
          ),
          body: layout.currentScreen,
          bottomNavigationBar: CustomBottomNavigationBar(layout: layout),
        );
      },
    );
  }
}
