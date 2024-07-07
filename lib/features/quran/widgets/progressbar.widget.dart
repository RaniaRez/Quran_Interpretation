import 'package:flutter/material.dart';

import '../../../core/const.dart';
import '../../../core/extension.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {super.key,
      this.width,
      this.height,
      this.details,
      required this.value,
      this.textStyle,
      this.backgroundColor,
      this.color});
  final double value;
  final double? width;
  final double? height;
  final String? details;
  final TextStyle? textStyle;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width ?? context.width,
          height: height ?? kSpacingX1,
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: backgroundColor ?? kGray.shade300,
            valueColor:
                AlwaysStoppedAnimation<Color>(color ?? kSuccess.shade600),
            borderRadius: BorderRadius.circular(kSpacingX1),
          ),
        ),
        if (details != null)
          Container(
            margin: EdgeInsets.only(top: kSpacingHalf),
            child: Text(
              details!.translate(context),
              style: textStyle ?? context.textTheme.titleSmall,
            ),
          ),
      ],
    );
  }
}
