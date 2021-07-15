import 'package:covid_vaccine/core/models/entity/center_model.dart';
import 'package:covid_vaccine/core/models/enum/sido.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_banner_ad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';

class CenterDetailView extends StatelessWidget {
  final VaccinationCenter center = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코로나 19 예방접종 기관'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _buildPageTitle(),
            Divider(
              color: AppColors.primary,
              height: Insets.md,
            ),
            _buildLocationInfo(),
            Divider(
              color: Colors.transparent,
              height: Insets.sm,
            ),
            Expanded(
              child: _buildMap(),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          width: Get.width,
          child: AppBannerAd(),
          color: Colors.white,
        )
      ],
    );
  }

  _buildPageTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.md, Insets.md, Insets.md, 0),
      child: FittedBox(
        child: Text(
          center.centerName,
          style: TextStyles.sans.copyWith(fontSize: Sizes.lg),
        ),
      ),
    );
  }

  _buildLocationInfo() {
    return Wrap(
      children: [
        Center(
          child: Material(
            elevation: Sizes.xxs,
            shape: CircleBorder(),
            child: Image(
              height: Sizes.md * 3,
              image: AssetImage(
                'assets/sido/${Sido.getSidoEngName(center.sido)}.png',
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.transparent,
          height: Insets.sm,
        ),
        ListTile(
          leading: _buildLocationLeading('주소'),
          title: Text(
            '${center.sido} ${center.sigungu}',
            style: TextStyle(fontSize: Sizes.sm),
          ),
          subtitle: Text(
            center.getDetailAddress(),
            style: TextStyle(
              fontSize: Sizes.sm,
              color: AppColors.primary,
            ),
          ),
        ),
        ListTile(
          leading: _buildLocationLeading('시설명'),
          title: Text(
            center.facilityName,
            style: TextStyle(fontSize: Sizes.sm),
          ),
          subtitle: Text(
            center.org,
            style: TextStyle(
              fontSize: Sizes.sm,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  _buildLocationLeading(String text) {
    return Container(
      width: 70,
      alignment: Alignment.centerRight,
      child: Text('$text'),
    );
  }

  _buildMap() {
    return KakaoMapView(
      width: Get.width,
      height: 400,
      kakaoMapKey: 'abd534ca6fd51998ec559691c9974663',
      lat: double.parse(center.lat),
      lng: double.parse(center.lng),
      showMapTypeControl: true,
      showZoomControl: true,
    );
  }
}
