import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';
import '../../../core/extension.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = kPrimary,
    this.textColor = Colors.white,
    required this.height,
    this.prefixIcon,
    this.disabled = false,
    this.width,
    this.suffixIcon,
  });
  final String text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color textColor;
  final double height;
  final double? width;
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
        elevation: WidgetStateProperty.all(0),
        backgroundColor: disabled
            ? MaterialStateProperty.all(kGray)
            : WidgetStateProperty.all(backgroundColor),
        minimumSize:
            WidgetStateProperty.all(Size(width ?? context.width, height.sp)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSpacingX1),
          ),
        ),
      ),
      onPressed: disabled ? () {} : onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixIcon != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  prefixIcon,
                  color: textColor,
                  size: 20.sp,
                ),
                SizedBox(width: kSpacingX1)
              ],
            ),
          Expanded(
            child: Text(text.translate(context),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: context.textTheme.headlineMedium!
                    .copyWith(color: textColor)),
          ),
          if (suffixIcon != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: kSpacingX1),
                Icon(
                  suffixIcon,
                  color: textColor,
                  size: 20.sp,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
