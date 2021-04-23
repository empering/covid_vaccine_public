import 'dart:ui';

import 'package:covid_vaccine/shared/const/app_color.dart';
import 'package:covid_vaccine/shared/widget/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid-19 예방접종 현황',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: controller.obx(
          (state) {
            final datum = state!.data.last;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.shieldVirus,
                    color: AppColor.primary,
                    size: 40.0,
                  ),
                  title: Text(
                    '예방접종 현황',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            '(${datum.baseDate.month}.${datum.baseDate.day - 1}. 24시 기준)',
                            style: TextStyle(
                              // color: AppColor.background,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      AppTextButton(
                        isIconFirst: false,
                        labelText: '자세히',
                        // labelColor: AppColor.background,
                        labelIcon: FaIcon(FontAwesomeIcons.arrowRight),
                        onPressed: () {
                          Get.toNamed('/home/country');
                        },
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.primary,
                  height: 50,
                ),
                Card(
                  color: AppColor.primary,
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
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 10.0,
                            ),
                            child: Text(
                              '1차 접종',
                              style: TextStyle(
                                color: AppColor.background,
                                fontSize: 20.0,
                                fontFamily: 'GmarketSansBold',
                              ),
                            ),
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '당일누적 ',
                                    style: TextStyle(
                                      color: AppColor.light,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  Text(
                                    '= 전일접종 + 전일누적',
                                    style: TextStyle(
                                      color: AppColor.background,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: AppColor.background, height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.totalFirstCnt)}',
                                        style: TextStyle(
                                          color: AppColor.light,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명',
                                        style: TextStyle(
                                          color: AppColor.light,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        ' = ',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.firstCnt)}',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명 + ',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.accumulatedFirstCnt)}',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.primary,
                  height: 50,
                ),
                Card(
                  color: AppColor.accent,
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
                          color: AppColor.primary,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 10.0,
                            ),
                            child: Text(
                              '2차 접종',
                              style: TextStyle(
                                color: AppColor.background,
                                fontSize: 20.0,
                                fontFamily: 'GmarketSansBold',
                              ),
                            ),
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '당일누적 ',
                                    style: TextStyle(
                                      color: AppColor.light,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  Text(
                                    '= 전일접종 + 전일누적',
                                    style: TextStyle(
                                      color: AppColor.background,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: AppColor.background, height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.totalSecondCnt)}',
                                        style: TextStyle(
                                          color: AppColor.light,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명',
                                        style: TextStyle(
                                          color: AppColor.light,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        ' = ',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.secondCnt)}',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명 + ',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      Text(
                                        '${NumberFormat.decimalPattern().format(datum.accumulatedSecondCnt)}',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      Text(
                                        ' 명',
                                        style: TextStyle(
                                          color: AppColor.background,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      persistentFooterButtons: [
        OutlinedButton(
          onPressed: () {
            Get.toNamed('/home/country');
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '상세보기',
              style: TextStyle(
                color: AppColor.background,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
