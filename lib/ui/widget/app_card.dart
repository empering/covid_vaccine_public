import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget headerWidget;
  final Widget bodyWidget;
  final Widget labelWidget;
  final bool isPrimaryColor;

  AppCard({
    required this.headerWidget,
    required this.bodyWidget,
    required this.labelWidget,
    this.isPrimaryColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isPrimaryColor ? AppColors.primary : AppColors.accent,
      margin: const EdgeInsets.fromLTRB(
        Insets.sm,
        Insets.sm + 15,
        Insets.sm,
        Insets.sm,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: Corners.lgBorderRadius,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: Insets.sm + 15,
            top: -(Insets.sm + 15),
            child: Card(
              color: AppColors.accent,
              shape: StadiumBorder(
                side: BorderSide(
                  color: AppColors.background,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.sm + 15,
                  vertical: Insets.sm,
                ),
                child: labelWidget,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, Insets.sm + 15, 0, Insets.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.md),
                  child: headerWidget,
                ),
                Divider(
                  color: AppColors.background,
                  height: Insets.lg,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Insets.md),
                  child: bodyWidget,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
