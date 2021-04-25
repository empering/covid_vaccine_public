import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  AppIcon({
    required this.icon,
    this.size = Sizes.sm,
    this.color = AppColors.background,
  });

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      size: size,
      color: color,
    );
  }
}
