import 'package:covid_vaccine/core/models/entity/institution_model.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InstitutionDetailView extends StatelessWidget {
  final InstitutionModel institution = Get.arguments;

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
              color: Colors.transparent,
              height: Insets.md,
            ),
            _buildInfo(),
            // Divider(
            //   color: Colors.transparent,
            //   height: Insets.md,
            // ),
            // _buildMap(),
          ],
        ),
      ),
    );
  }

  _buildPageTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.md, Insets.md, Insets.md, 0),
      child: FittedBox(
        child: Text(
          institution.orgnm,
          style: TextStyles.sans.copyWith(fontSize: Sizes.lg),
        ),
      ),
    );
  }

  _buildInfo() {
    String addr = institution.orgZipaddr.split(' ').sublist(0, 2).join(' ');
    String addrDetail = institution.orgZipaddr.split(' ').sublist(2).join(' ');
    return Wrap(
      children: [
        ListTile(
          title: Text(
            addr + '\n' + addrDetail,
            style: TextStyle(
              fontSize: Sizes.sm,
              color: Colors.black54,
            ),
          ),
        ),
        Divider(
          color: AppColors.primary,
          height: Insets.md,
        ),
        ListTile(
          leading: _buildLocationLeading('전화번호'),
          title: Text(
            institution.orgTlno,
            style: TextStyle(
              fontSize: Sizes.sm,
              color: Colors.black54,
            ),
          ),
        ),
        ListTile(
          leading: _buildLocationLeading('진료시간'),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '- 월요일 : ' +
                    _getTimeInfo(
                      start: institution.monSttTm,
                      end: institution.monEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 화요일 : ' +
                    _getTimeInfo(
                      start: institution.tueSttTm,
                      end: institution.tueEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 수요일 : ' +
                    _getTimeInfo(
                      start: institution.wedSttTm,
                      end: institution.wedEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 목요일 : ' +
                    _getTimeInfo(
                      start: institution.thuSttTm,
                      end: institution.thuEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 금요일 : ' +
                    _getTimeInfo(
                      start: institution.friSttTm,
                      end: institution.friEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 토요일 : ' +
                    _getTimeInfo(
                      start: institution.satSttTm,
                      end: institution.satEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
              Text(
                '- 일요일 : ' +
                    _getTimeInfo(
                      start: institution.sunSttTm,
                      end: institution.sunEndTm,
                    ),
                style: TextStyle(
                  fontSize: Sizes.sm,
                  height: 1.2,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          subtitle: Text(
            '= 점심시간 : ' +
                _getTimeInfo(
                  start: institution.lunchSttTm,
                  end: institution.lunchEndTm,
                  isLaunch: true,
                ),
            style: TextStyle(fontSize: Sizes.sm, height: 1.5),
          ),
        ),
      ],
    );
  }

  _getTimeInfo({String? start, String? end, bool isLaunch = false}) {
    if (start != null && end != null) {
      return start.substring(0, 2) +
          ':' +
          start.substring(2) +
          ' ~ ' +
          end.substring(0, 2) +
          ':' +
          end.substring(2);
    } else {
      return isLaunch ? '정보없음' : '휴진';
    }
  }

  _buildLocationLeading(String text) {
    return Container(
      width: 70,
      alignment: Alignment.centerRight,
      child: Text('$text'),
    );
  }

  _buildMap() {
    return Column(
      children: [
        Container(
          height: 200,
          child: Image(
            image: AssetImage(
              'assets/map.png',
            ),
          ),
        ),
        Text('지도정보 준비중입니다.'),
      ],
    );
  }
}
