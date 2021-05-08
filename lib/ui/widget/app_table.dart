import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTableCell extends StatelessWidget {
  final String text;
  final double height;
  final TextStyle? style;
  final TextAlign? align;
  final Color? cellColor;
  final Color? textColor;
  final bool isFirstCell;

  AppTableCell({
    required this.text,
    this.height = 45,
    this.style,
    this.align,
    this.cellColor,
    this.textColor,
    this.isFirstCell = false,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: isFirstCell ? TableCellVerticalAlignment.fill : null,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: cellColor ?? AppColors.background,
        height: height,
        alignment: Alignment.center,
        child: Text(
          text,
          style: style?.copyWith(
                fontSize: 14.0,
                color: textColor ?? AppColors.background,
              ) ??
              TextStyle(
                fontSize: 14.0,
                color: textColor ?? AppColors.background,
              ),
          textAlign: align ?? TextAlign.center,
        ),
      ),
    );
  }
}
