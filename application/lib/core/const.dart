import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String images = 'assets/images/';
const String icons = 'assets/icons/';

const Map<int, Color> orange = {
  100: Color(0xFFFFEFD6),
  200: Color(0xFFFFE0AC),
  300: Color(0xFFFFD187),
  400: Color(0xFFFFC35D),
  500: Color(0xFFF7903B),
  600: Color(0xFFD27326),
  700: Color(0xFFB05B22),
  800: Color(0xFF8E4320),
  900: Color(0xFF753119),
};

const Map<int, Color> danger = {
  100: Color(0xFFFDE4D6),
  200: Color(0xFFFCC3AF),
  300: Color(0xFFF69985),
  400: Color(0xFFED7165),
  500: Color(0xFFE23636),
  600: Color(0xFFC22734),
  700: Color(0xFFA21B32),
  800: Color(0xFF83112E),
  900: Color(0xFF6C0A2C),
};

const Map<int, Color> gray = {
  50: Color(0xFFF9F9FA),
  100: Color(0xFFECEEEF),
  200: Color(0xFFDADFE2),
  300: Color(0xFFCDD5DB),
  400: Color(0xFFB8C1C6),
  500: Color(0xFFA8B3B9),
  600: Color(0xFF949FA6),
  700: Color(0xFF737F85),
  800: Color(0xFF475156),
  900: Color(0xFF202629),
};

const Map<int, Color> primary = {
  100: Color(0xFFF2E5F9),
  200: Color(0xFFDECAF0),
  300: Color(0xFFC191E7),
  400: Color(0xFFA657DD),
  500: Color(0xFFAB7AAE),
  600: Color(0xFF823B8F),
  700: Color(0xFF6B347F),
  800: Color(0xFF532D6F),
  900: Color(0xFF3D2660),
};

const Map<int, Color> success = {
  100: Color(0xFFE2FBD4),
  200: Color(0xFFBFF8AA),
  300: Color(0xFF91EA7B),
  400: Color(0xFF65D557),
  500: Color(0xFF2BBA28),
  600: Color(0xFF1D9F25),
  700: Color(0xFF148525),
  800: Color(0xFF0C6B23),
  900: Color(0xFF075921),
};

const Map<int, Color> warning = {
  100: Color(0xFFFFF6CC),
  200: Color(0xFFFFEC99),
  300: Color(0xFFFFE066),
  400: Color(0xFFFFCC3F),
  500: Color(0xFFFFC300),
  600: Color(0xFFDB9900),
  700: Color(0xFFC27400),
  800: Color(0xFFA75701),
  900: Color(0xFF7A4100),
};

const kPrimary = MaterialColor(0xFFAB7AAE, primary);
const kOrange = MaterialColor(0xFFF7903B, orange);
const kDanger = MaterialColor(0xFFE23636, danger);
const kGray = MaterialColor(0xFF949FA6, gray);
const kSuccess = MaterialColor(0xFF2BBA28, success);
const kWarning = MaterialColor(0xFFDB9900, warning);

Color textPrimary = kGray.shade900;
Color textSecondary = kGray.shade700;
Color textInvert = kGray.shade100;

Color borderPrimary = kGray.shade900;
Color borderSecondary = kGray.shade400;
Color borderTernary = kGray.shade200;

Color surfacePrimary = kGray.shade50;
Color surfaceSecondary = Colors.white;
Color surfaceBrand = const Color(0xFF1C1724);
Color surfaceOrange = kOrange.shade500;
Color surfaceFaded = kGray.shade300;

Color iconSecondary = kGray.shade600;

Gradient gradientPrimary = const LinearGradient(
  begin: Alignment(0.71, -0.71),
  end: Alignment(-0.71, 0.71),
  colors: [Color(0xFFDF98FA), Color(0xFF9055FF)],
);

double kSpacingHalf = 4.sp;
double kSpacingX1 = 8.sp;
double kSpacingX2 = 16.sp;
double kSpacingX3 = 32.sp;
double kSpacingX4 = 40.sp;
double kSpacingX5 = 48.sp;
double kSpacingX6 = 56.sp;
double kSpacingX7 = 64.sp;
double kSpacingX8 = 72.sp;
double kSpacingX9 = 80.sp;
double kSpacingX10 = 88.sp;
double kSpacingX11 = 96.sp;
double kSpacingX12 = 104.sp;

double kCornerButtonRadius = 8.r;

BoxShadow kDropShadowPrimary = BoxShadow(
  color: Colors.black.withOpacity(.15),
  blurRadius: 0,
  offset: const Offset(0, 2),
  spreadRadius: 0,
);

BoxShadow kDropShadowSecondary = BoxShadow(
  color: Colors.black.withOpacity(.11),
  blurRadius: 24,
  offset: const Offset(0, -2),
  spreadRadius: 0,
);
const String https = 'https://';
const String baseUrl = 'e.millennium-medic.com';
const String port = "8004";

const String bucketClientId = "logipharm-bucket-dev";
const String bucketClientSecret =
    "b24e93a9-c8e4-4901-9d0d-68ee0d20c55a\$75UVdxPgKOnNUpOPJFAabC7SrmQpOGfTJKaBeV6_c74=";

const List<String> supportedLanguages = [
  'fr',
  'en',
  'ar',
];
