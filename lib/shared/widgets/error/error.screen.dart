import '../../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';
import '../image/custom_local_image.widget.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.message, required this.onRetry});
  final String message;
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => onRetry(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomLocalImage(image: 'errors/404.png', width: 300.sp),
              SizedBox(height: kSpacingX2),
              Text(
                message.translate(context),
                style: context.textTheme.titleLarge!.copyWith(color: kPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
