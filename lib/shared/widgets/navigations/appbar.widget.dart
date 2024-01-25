import 'package:app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
  });
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final bool canPop = context.canPop;
    return AppBar(
      leading: (canPop)
          ? IconButton(
              icon: const Icon(LucideIcons.arrowLeft),
              onPressed: () => context.pop(),
            )
          : null,
      title: title,
      actions: actions,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
