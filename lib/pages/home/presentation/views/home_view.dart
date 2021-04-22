import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   colorFilter: ColorFilter.linearToSrgbGamma(),
        //   image: NetworkImage(
        //       "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        // ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Covid-19 예방접종 현황'),
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: controller.obx(
            (state) {
              final datum = state!.data[0];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${datum.baseDate.year}.${datum.baseDate.month}.${datum.baseDate.day} 일 기준',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '당일(1차 접종)',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${datum.firstCnt}',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '당일(2차 접종)',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${datum.secondCnt}',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '전체 누적(1차 접종)',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${datum.totalFirstCnt}',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '전체 누적(2차 접종)',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${datum.totalSecondCnt}',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      textStyle: TextStyle(color: Colors.black),
                      side: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 2,
                      ),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Get.toNamed('/home/country');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '상세보기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
