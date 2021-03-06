import 'package:covid_vaccine/pages/app/controller/app_controller.dart';
import 'package:covid_vaccine/pages/center/views/center_view.dart';
import 'package:covid_vaccine/pages/information/views/infomation_view.dart';
import 'package:covid_vaccine/pages/side_effect/views/side_effect_view.dart';
import 'package:covid_vaccine/pages/vaccination/views/vaccination_view.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_banner_ad.dart';
import 'package:covid_vaccine/ui/widget/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  var controller = Get.find<AppController>();

  int pageIndex = 0;
  var pages = [
    VaccinationView(),
    CenterView(),
    InformationView(),
    SideEffectView(),
  ];

  var pagesTitle = [
    '코로나 19 예방접종 현황',
    '코로나 19 예방접종 기관',
    '코로나 19 예방접종 정보',
    '코로나 19 예방접종 후 대처법',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(pagesTitle[controller.pageIndex.value])),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: pages[controller.pageIndex.value]),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInToLinear,
              alignment: Alignment.center,
              child:
                  controller.pageIndex.value >= 2 ? AppBannerAd() : Container(),
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.light,
        showUnselectedLabels: true,
        currentIndex: controller.pageIndex.value,
        onTap: (index) {
          controller.pageIndex.value = index;
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: FaIcon(FontAwesomeIcons.chartLine),
            label: '접종현황',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.map),
            label: '접종센터',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.infoCircle),
            label: '접종정보',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.exclamationTriangle),
            label: '접종후대처',
          ),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }

  _buildDrawer(BuildContext context) {
    var listTiles = [
      Obx(
        () => ListTile(
          leading: FaIcon(FontAwesomeIcons.rocket),
          title: Text('앱 버전 정보'),
          trailing:
              Text('v${controller.appVersion}+${controller.appBuildNumber}'),
        ),
      ),
      Obx(
        () => Wrap(
          children: [
            SwitchListTile(
              secondary: controller.isNotification.value
                  ? FaIcon(FontAwesomeIcons.bell)
                  : FaIcon(FontAwesomeIcons.bellSlash),
              title: Text('알림설정'),
              value: controller.isNotification.value,
              onChanged: (value) {
                controller.setNotification(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: Insets.xxl),
              child: Text(
                '알림설정에 동의 하시면\n매일 아침 9시 40분\n예방접종 현황을 알려드려요.',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: Sizes.xs,
                ),
              ),
            )
          ],
        ),
      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.thumbsUp),
        title: Text('리뷰작성'),
        onTap: () {
          controller.goMarket();
        },
      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.shareAltSquare),
        title: Text('친구에게 알리기'),
        onTap: () {
          final RenderBox box = context.findRenderObject() as RenderBox;
          Share.share(
            '안전 백신 정보 Plus',
            subject:
                'https://play.google.com/store/apps/details?id=kr.co.azzu.covid_vaccine',
            sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
          );
        },
      ),
    ];

    return Drawer(
      elevation: 10.0,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: Sizes.lg,
                    backgroundColor: AppColors.background,
                    child: AppIcon(
                      icon: FontAwesomeIcons.shieldVirus,
                      color: AppColors.primary,
                      size: Sizes.xxl,
                    ),
                  ),
                  Text(
                    '안전 백신 정보\nPlus',
                    style: TextStyles.h1.copyWith(color: AppColors.background),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(color: AppColors.primary),
            padding: EdgeInsets.all(10),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 0.0,
              ),
              itemCount: listTiles.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (context, index) {
                return listTiles[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
