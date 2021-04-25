import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';

enum ThemeType {
  LIGHT,
}

class AppThemes {
  final ThemeType defaultTheme = ThemeType.LIGHT;

  static ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColors.primary,
      accentColor: AppColors.accent,
      backgroundColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,
      canvasColor: AppColors.background,
      fontFamily: Fonts.bmJua,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
      ),
      textTheme: TextTheme(
        headline1: TextStyles.h1,
        subtitle1: TextStyles.s1,
        bodyText1: TextStyle(),
        bodyText2: TextStyle(fontSize: Sizes.sm),
        button: TextStyle(fontSize: Sizes.sm),
      ).apply(bodyColor: AppColors.primary),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: AppColors.background,
            width: 2,
          ),
          backgroundColor: AppColors.primary,
          shape: StadiumBorder(),
        ),
      ),
      buttonBarTheme: ButtonBarThemeData(
        alignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
