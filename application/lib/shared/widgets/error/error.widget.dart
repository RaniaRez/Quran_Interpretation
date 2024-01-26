import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    super.key,
    required this.err,
    this.scale = 0.6,
  });
  final String err;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight * scale,
      child: Center(
          child: Text(
        err,
        style: Theme.of(context).textTheme.titleMedium,
      )),
    );
  }
}
