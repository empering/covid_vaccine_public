import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final Color buttonColor;
  final Color labelColor;
  final Widget? labelIcon;
  final String? labelText;
  final VoidCallback? onPressed;
  final bool disabled;
  final bool isIconFirst;

  AppTextButton({
    this.buttonColor = Colors.transparent,
    this.labelColor = AppColors.primary,
    this.labelIcon,
    this.labelText,
    this.onPressed,
    this.disabled = false,
    this.isIconFirst = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled ? null : onPressed,
      style: TextButton.styleFrom(
        primary: disabled ? Colors.white : labelColor,
        backgroundColor: disabled ? Colors.white : buttonColor,
      ),
      child: Wrap(
        spacing: 10.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: _buildButtonLabel(),
      ),
    );
  }

  _buildButtonLabel() {
    var buttonLabel = <Widget>[];
    if (labelIcon != null && isIconFirst) {
      buttonLabel.add(labelIcon!);
    }

    if (labelText != null) {
      buttonLabel.add(Text(labelText!));
    }

    if (labelIcon != null && !isIconFirst) {
      buttonLabel.add(labelIcon!);
    }

    return buttonLabel;
  }
}
