import '../../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';
import '../buttons/button.widget.dart';

class ConfirmationPopUp extends StatelessWidget {
  const ConfirmationPopUp({
    super.key,
    required this.icon,
    required this.title,
    this.description,
    required this.confirmText,
    required this.cancelText,
    required this.color,
    required this.iconBackground,
  });
  final IconData icon;
  final String title;
  final String? description;
  final String confirmText;
  final String cancelText;
  final Color color;
  final Color iconBackground;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kSpacingX2)),
      backgroundColor: color,
      clipBehavior: Clip.hardEdge,
      content: Container(
        margin: EdgeInsets.only(top: kSpacingX1),
        padding: EdgeInsets.all(kSpacingX2),
        decoration: BoxDecoration(
          color: surfaceSecondary,
          borderRadius: BorderRadius.circular(kSpacingX2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: kSpacingX7,
              width: kSpacingX7,
              padding: EdgeInsets.all(kSpacingX2),
              decoration:
                  BoxDecoration(color: iconBackground, shape: BoxShape.circle),
              child: Icon(icon, color: color),
            ),
            SizedBox(height: kSpacingX2),
            Text(
              title.translate(context),
              maxLines: 3,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineMedium,
            ),
            SizedBox(height: kSpacingX1),
            if (description != null)
              Text(
                title.translate(context),
                maxLines: 3,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium,
              ),
            SizedBox(height: 24.sp),
            CustomButton(
              text: confirmText,
              backgroundColor: color,
              height: 44.sp,
              onPressed: () => context.pop(pop: true),
            ),
            SizedBox(height: kSpacingX1),
            GestureDetector(
              onTap: () => context.pop(pop: false),
              child: Text(
                cancelText.translate(context),
                maxLines: 3,
                textAlign: TextAlign.center,
                style: context.textTheme.labelSmall!.copyWith(color: kPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
