import 'package:covid_vaccine/shared/const/app_color.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget headerWidget;
  final Widget bodyWidget;
  final Widget lableWidget;
  final bool isPrimaryColor;

  AppCard({
    required this.headerWidget,
    required this.bodyWidget,
    required this.lableWidget,
    this.isPrimaryColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isPrimaryColor ? AppColor.primary : AppColor.accent,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 25,
            top: -25,
            child: Card(
              color: AppColor.accent,
              shape: StadiumBorder(
                side: BorderSide(
                  color: AppColor.background,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                child: lableWidget,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: headerWidget,
                ),
                Divider(
                  color: AppColor.background,
                  height: 30,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
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
