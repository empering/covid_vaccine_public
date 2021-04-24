import 'package:covid_vaccine/pages/home/presentation/views/home_view.dart';
import 'package:covid_vaccine/shared/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int pageIndex = 0;
  var pages = [
    HomeView(),
    Container(
      child: Center(
        child: Text('접종센터'),
      ),
    ),
    Container(
      child: Center(
        child: Text('접종정보'),
      ),
    ),
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
        selectedItemColor: AppColor.light,
        showUnselectedLabels: true,
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColor.primary,
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
