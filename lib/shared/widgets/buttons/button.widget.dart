import '../../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = kPrimary,
    this.textColor = Colors.white,
    required this.height,
    this.icon,
    this.disabled = false,
  });
  final String text;
  final IconData? icon;
  final Color textColor;
  final double height;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: kSpacingX2,
            vertical: kSpacingX1,
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: disabled
            ? MaterialStateProperty.all(kGray)
            : MaterialStateProperty.all(backgroundColor),
        minimumSize:
            MaterialStateProperty.all(Size(double.infinity, height.sp)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSpacingX1),
          ),
        ),
      ),
      onPressed: disabled ? () {} : onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: textColor,
                  size: 20.sp,
                ),
                SizedBox(width: kSpacingX1)
              ],
            ),
          Text(text.translate(context),
              maxLines: 2,
              textAlign: TextAlign.center,
              style:
                  context.textTheme.headlineMedium!.copyWith(color: textColor)),
        ],
      ),
    );
  }
}
