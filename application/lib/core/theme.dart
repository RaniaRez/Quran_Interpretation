import 'const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static TextTheme lightTextTheme() => TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          fontSize: 16.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        headlineSmall: TextStyle(
          fontSize: 14.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          color: textPrimary,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          color: textPrimary,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          color: textPrimary,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        labelLarge: TextStyle(
          fontSize: 24.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: TextStyle(
          fontSize: 20.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelSmall: TextStyle(
          fontSize: 16.sp,
          color: textPrimary,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
      );
  static TextTheme darkTextTheme() => TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          fontSize: 16.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        headlineSmall: TextStyle(
          fontSize: 14.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          color: textInvert,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          color: textInvert,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(
          fontSize: 35.sp,
          color: textInvert,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          color: textInvert,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        labelLarge: TextStyle(
          fontSize: 24.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: TextStyle(
          fontSize: 20.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelSmall: TextStyle(
          fontSize: 16.sp,
          color: textInvert,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
      );

  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimary,
        scaffoldBackgroundColor: Colors.white,
        textTheme: lightTextTheme(),
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: borderSecondary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: borderSecondary,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: kPrimary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: kDanger,
              width: 2,
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.sp, vertical: 10.sp),
          hintStyle: lightTextTheme().bodySmall!.copyWith(color: textSecondary),
          labelStyle:
              lightTextTheme().bodySmall!.copyWith(color: textSecondary),
          errorStyle: lightTextTheme().bodySmall!.copyWith(color: kDanger),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: kPrimary,
          textTheme: ButtonTextTheme.primary,
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 10.sp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimary),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: 10.sp,
                vertical: 5.sp,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kCornerButtonRadius),
              ),
            ),
          ),
        ),
      );
  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimary,
        scaffoldBackgroundColor: kPrimary.shade900,
        textTheme: darkTextTheme(),
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: kPrimary.shade900,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: borderSecondary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: kPrimary,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: kPrimary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: kDanger,
              width: 2,
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.sp, vertical: 10.sp),
          hintStyle: darkTextTheme().bodySmall!.copyWith(color: textSecondary),
          labelStyle: darkTextTheme().bodySmall!.copyWith(color: textSecondary),
          errorStyle: darkTextTheme().bodySmall!.copyWith(color: kDanger),
          iconColor: kPrimary,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: kPrimary,
          textTheme: ButtonTextTheme.primary,
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 10.sp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimary.shade900),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: 10.sp,
                vertical: 5.sp,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kCornerButtonRadius),
              ),
            ),
          ),
        ),
      );
}
