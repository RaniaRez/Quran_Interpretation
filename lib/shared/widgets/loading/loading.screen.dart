import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../core/const.dart';
import '../../../core/extension.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loading/loading.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "loading:name".translate(context),
                style: context.textTheme.headlineLarge!
                    .copyWith(color: surfaceSecondary),
              ),
              SizedBox(height: kSpacingX1),
              Text(
                "loading:description".translate(context),
                maxLines: 3,
                style: context.textTheme.bodyLarge!
                    .copyWith(color: surfaceSecondary),
              ),
              SizedBox(height: kSpacingX2),
              LoadingAnimationWidget.waveDots(
                size: 25.sp,
                color: kPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
