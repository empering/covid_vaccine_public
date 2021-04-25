import 'dart:ui';

import 'package:covid_vaccine/pages/vaccination/controllers/vaccination_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VaccinationDetailView extends GetView<VaccinationController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: NetworkImage(
                  "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('corona_by_country'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
              child: ListView.builder(
                  itemCount: controller.state!.data.length,
                  itemBuilder: (context, index) {
                    final vaccination = controller.state!.data[index];
                    return ListTile(
                      onTap: () {
                        Get.toNamed('/home/country/details',
                            arguments: vaccination);
                      },
                      trailing: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://flagpedia.net/data/flags/normal/ko.png"),
                      ),
                      title: Text(vaccination.sido),
                      subtitle: Text(
                          // ignore: lines_longer_than_80_chars
                          '${'total_infecteds'}${' ${vaccination.accumulatedFirstCnt}'}'),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
