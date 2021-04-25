import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {}

class Fonts {
  static const bmJua = 'BMJUA';
  static const gSansBold = 'GmarketSansBold';
}

class Sizes {
  static const xxl = 36.0;
  static const xl = 32.0;
  static const lg = 28.0;
  static const md = 24.0;
  static const sm = 20.0;
  static const xs = 16.0;
  static const xxs = 12.0;
}

class TextStyles {
  static const base = const TextStyle(fontFamily: Fonts.bmJua);
  static const sans = const TextStyle(fontFamily: Fonts.gSansBold);

  static TextStyle get h1 => sans.copyWith(
        fontSize: Sizes.xxl,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      );

  static TextStyle get s1 => h1.copyWith(
        fontSize: Sizes.md,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      );

  static TextStyle get lightXl => base.copyWith(
        color: AppColors.light,
        fontSize: Sizes.xl,
      );

  static TextStyle get backgroundXl => base.copyWith(
        color: AppColors.background,
        fontSize: Sizes.xl,
      );
}

class Insets {
  static const xxl = 50.0;
  static const xl = 40.0;
  static const lg = 30.0;
  static const md = 20.0;
  static const sm = 10.0;
  static const xs = 5.0;
}

class Corners {
  static const lg = 20.0;
  static BorderRadius get lgBorderRadius => BorderRadius.circular(lg);
}
