import 'package:app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            minimumSize: MaterialStateProperty.all(
              Size(double.infinity, ScreenUtil().setHeight(50)),
            ),
          ),
      child: Text(
        text.translate(context),
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: textInvert),
      ),
    );
  }
}
