import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  final String label;
  final Widget? icon;
  final Color color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  AppOutlinedButton({
    required this.label,
    this.icon,
    this.color = AppColors.background,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var style;

    if (backgroundColor != null) {
      style = OutlinedButton.styleFrom(backgroundColor: backgroundColor);
    }

    var textLabel = Text(
      label,
      style: TextStyle(
        color: AppColors.background,
        fontWeight: FontWeight.bold,
      ),
    );

    var child = icon == null
        ? textLabel
        : Wrap(
            spacing: Insets.sm,
            children: [
              icon!,
              textLabel,
            ],
          );

    return OutlinedButton(
      onPressed: onPressed,
      style: style,
      child: Padding(
        padding: const EdgeInsets.all(Insets.sm),
        child: child,
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final Color color;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final bool disabled;
  final bool isIconFirst;

  AppTextButton({
    this.backgroundColor = Colors.transparent,
    this.color = AppColors.primary,
    this.icon,
    this.label,
    this.onPressed,
    this.disabled = false,
    this.isIconFirst = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled ? null : onPressed,
      style: TextButton.styleFrom(
        primary: disabled ? Colors.white : color,
        backgroundColor: disabled ? Colors.grey : backgroundColor,
      ),
      child: Wrap(
        spacing: Insets.sm,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: _buildButtonLabel(),
      ),
    );
  }

  _buildButtonLabel() {
    var buttonLabel = <Widget>[];
    if (icon != null && isIconFirst) {
      buttonLabel.add(icon!);
    }

    if (label != null) {
      buttonLabel.add(Text(label!));
    }

    if (icon != null && !isIconFirst) {
      buttonLabel.add(icon!);
    }

    return buttonLabel;
  }
}
