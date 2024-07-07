import '../../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const.dart';
import '../image/custom_local_image.widget.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLocalImage(image: 'errors/000.png', width: 300.sp),
            SizedBox(height: kSpacingX2),
            Text(
              "errors:no-internet-connection".translate(context),
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge!.copyWith(color: kPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
