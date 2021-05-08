import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTextWithIcon extends StatelessWidget {
  final String content;
  final IconData icon;
  final Color textColor;
  final double textSize;
  final EdgeInsets padding;
  final double spacing;

  AppTextWithIcon({
    required this.content,
    this.icon = FontAwesomeIcons.arrowAltCircleRight,
    this.textColor = AppColors.primary,
    this.textSize = Sizes.md,
    this.padding = const EdgeInsets.symmetric(vertical: Insets.xs),
    this.spacing = Insets.sm,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(
            icon: icon,
            size: textSize,
            color: textColor,
          ),
          SizedBox(width: spacing),
          Expanded(
            child: Text(
              content,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
