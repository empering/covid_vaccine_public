import 'package:covid_vaccine/core/shared/ad/ad_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppBannerAd extends StatefulWidget {
  @override
  _AppBannerAdState createState() => _AppBannerAdState();
}

class _AppBannerAdState extends State<AppBannerAd> {
  final adManager = Get.find<AdManager>();
  late BannerAd _ad;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();

    _ad = BannerAd(
      size: AdSize.banner,
      adUnitId: adManager.bannerAdUnitId,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
      request: AdRequest(),
    );

    _ad.load();
  }

  @override
  Widget build(BuildContext context) {
    return _isAdLoaded
        ? Container(
            child: AdWidget(ad: _ad),
            width: _ad.size.width.toDouble(),
            height: 72.0,
            alignment: Alignment.center,
            color: Colors.white,
          )
        : Container();
  }
}
