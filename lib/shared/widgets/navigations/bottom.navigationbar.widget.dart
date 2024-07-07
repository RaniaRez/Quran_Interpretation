import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/const.dart';
import '../../../core/extension.dart';
import '../../../features/navigation/cubit/navigation_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.layout,
  });

  final NavigationCubit layout;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimary,
      backgroundColor: surfaceBrand,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: 25.sp,
      elevation: 10,
      currentIndex: layout.current.value.toInt(),
      onTap: (value) => layout.change(value),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(LucideIcons.mailOpen),
          label: "layout:${AppScreen.notification.name.translate(context)}"
              .translate(context),
        ),
        BottomNavigationBarItem(
          icon: const Icon(LucideIcons.heartHandshake),
          label: "layout:${AppScreen.duaa.name.translate(context)}"
              .translate(context),
        ),
        BottomNavigationBarItem(
          icon: const Icon(LucideIcons.home),
          label: "layout:${AppScreen.home.name.translate(context)}"
              .translate(context),
        ),
        BottomNavigationBarItem(
          icon: const Icon(LucideIcons.messageCircle),
          label: "layout:${AppScreen.chat.name.translate(context)}"
              .translate(context),
        ),
        BottomNavigationBarItem(
          icon: const Icon(LucideIcons.trophy),
          label: "layout:${AppScreen.leaderboard.name.translate(context)}"
              .translate(context),
        ),
      ],
    );
  }
}
