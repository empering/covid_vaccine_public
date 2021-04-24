import 'dart:ui';

import 'package:covid_vaccine/pages/home/domain/entity/sido.dart';
import 'package:covid_vaccine/shared/const/app_color.dart';
import 'package:covid_vaccine/shared/widget/app_card.dart';
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
      body: Center(
        child: controller.obx(
          (state) {
            final datum = state!.data
                .lastWhere((d) => d.sido == Sido.getSidoName(SidoEnum.ALL));

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
                AppCard(
                  headerWidget: _buildCardHeader(),
                  bodyWidget: _buildCardBody(
                    datum.totalFirstCnt,
                    datum.firstCnt,
                    datum.accumulatedFirstCnt,
                  ),
                  lableWidget: _buildCardLable('1차 접종'),
                ),
                Divider(
                  color: AppColor.primary,
                  height: 50,
                ),
                AppCard(
                  headerWidget: _buildCardHeader(),
                  bodyWidget: _buildCardBody(
                    datum.totalSecondCnt,
                    datum.secondCnt,
                    datum.accumulatedSecondCnt,
                  ),
                  lableWidget: _buildCardLable('2차 접종'),
                  isPrimaryColor: false,
                ),
              ],
            );
          },
        ),
      ),
      // persistentFooterButtons: [
      //   OutlinedButton(
      //     onPressed: () {
      //       Get.toNamed('/home/country');
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Text(
      //         '상세보기',
      //         style: TextStyle(
      //           color: AppColor.background,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   )
      // ],
    );
  }

  _buildCardLable(String text) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.background,
        fontSize: 20.0,
        fontFamily: 'GmarketSansBold',
      ),
    );
  }

  _buildCardHeader() {
    return Row(
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
    );
  }

  _buildCardBody(num totalFirstCnt, num firstCnt, num accumulatedFirstCnt) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${NumberFormat.decimalPattern().format(totalFirstCnt)}',
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
              '${NumberFormat.decimalPattern().format(firstCnt)}',
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
              '${NumberFormat.decimalPattern().format(accumulatedFirstCnt)}',
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
    );
  }
}
