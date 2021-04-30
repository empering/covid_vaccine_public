import 'package:covid_vaccine/pages/information/views/infomation_view.dart';
import 'package:covid_vaccine/pages/vaccination/views/vaccination_view.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int pageIndex = 0;
  var pages = [
    VaccinationView(),
    Container(
      child: Center(
        child: Text('접종센터'),
      ),
    ),
    InformationView(),
    Container(
      child: Center(
        child: Text('위기대처'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid-19 예방접종 현황',
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.light,
        showUnselectedLabels: true,
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: FaIcon(FontAwesomeIcons.home),
            label: '접종현황',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.map),
            label: '접종센터',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.info),
            label: '접종정보',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.ambulance),
            label: '위기대처',
          ),
        ],
      ),
    );
  }
}
