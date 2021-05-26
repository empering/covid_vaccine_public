import 'package:covid_vaccine/pages/information/controller/information_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_buttons.dart';
import 'package:covid_vaccine/ui/widget/app_table.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationSchedule extends StatelessWidget {
  final index;

  InformationSchedule({this.index = -1});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<InformationController>();

    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        controller.panelIndex.value =
            controller.panelIndex.value == panelIndex ? -1 : panelIndex;
      },
      elevation: 0,
      dividerColor: Colors.transparent,
      expandedHeaderPadding: EdgeInsets.zero,
      animationDuration: Duration(milliseconds: 500),
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '누가 접종 하나요?',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 0,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content: '전 국민이 코로나19 예방접종 대상입니다.',
                  textColor: AppColors.accent,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '다만, 예방접종 순서는 백신 도입 및 공급, 접종 상황(접종률), 백신별 임상 결과 등을 고려하여 우선접종 권장대상부터 접종하고, 순차적으로 예방접종 대상자를 확대할 예정입니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '예방접종 계획을 알려주세요.',
                icon: FontAwesomeIcons.solidQuestionCircle,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 1,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWithIcon(
                  content:
                      '이미 확보한 백신을 최대한 효율적,효과적으로 활용하여, 더 빠른 속도로, 더 많은 국민에게 접종 실시하고자 1차 접종자를 최대한 확대 하여 접종합니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '2분기에는 요양병원,요양시설 65세 이상 입원,입소자 및 종사자, 코로나19 취약시설 입소자 및 종사자, 65세이상 어르신, 학교 및 돌봄공간, 만성질환자(만성신장질환, 만성중증호흡기질환), 보건의료인과 사회필수인력을 대상으로 접종을 실시합니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '추가적으로, 고등학교 3학년 학생과 교사 등에 대해 안정적 학교교육, 대학별고사(논술,면접)와 수능 등 전국 이동에 따른 전파확산 위험과 방역부담 등을 고려하여 접종을 결정하였고, 학사일정 및 백신수급 일정 등을 고려하여 추진할 예정입니다.',
                  textColor: Colors.black54,
                  textSize: Sizes.sm,
                ),
                Divider(),
                _buildTable(),
              ],
            ),
          ),
        ),
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: AppTextWithIcon(
                content: '예방접종 사전예약 기간',
                icon: FontAwesomeIcons.solidQuestionCircle,
                textColor: AppColors.accent,
              ),
            );
          },
          backgroundColor: AppColors.background,
          canTapOnHeader: true,
          isExpanded: index == 2,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: AppOutlinedButton(
                    label: '예방접종 예약하기',
                    icon: FontAwesomeIcons.arrowAltCircleRight,
                    size: Sizes.xs,
                    onPressed: () {
                      launch('https://ncvr.kdca.go.kr/cobk/index.html');
                    },
                  ),
                ),
                _buildSchduleTable(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(75),
        1: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            AppTableCell(
              text: '접종 일정',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black54,
            ),
            AppTableCell(
              text: '접종 대상 및 방법',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '3월4주',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _cell(
                text: '65세 이상 입원, 입소자 및 종사자',
                vaccine: '아스트라제네카',
                vaccination: '자체 / 방문',
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '4월1주',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '노인시설, 75세 이상 어르신',
                    vaccine: '화이자',
                    vaccination: '예방접종센터',
                  ),
                  _cell(
                    text: '특수교육 종사자 및 유,초중등 보건교사\n- 어린이집 장애아전문 교직원 및 간호인력',
                    vaccine: '아스트라제네카',
                    vaccination: '보건소',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '4월2주',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '장애인 시설',
                    vaccine: '아스트라제네카',
                    vaccination: '방문(위탁)',
                  ),
                  _cell(
                    text: '교정시설 등 종사자',
                    vaccine: '아스트라제네카',
                    vaccination: '자체 / 보건소',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '4월3주',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '노인요양공동생활가정',
                    vaccine: '아스트라제네카',
                    vaccination: '방문(위탁)',
                  ),
                  _cell(
                    text: '결핵 및 한센인 거주시설',
                    vaccine: '아스트라제네카',
                    vaccination: '방문(보건소)',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '4월4주',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _cell(
                text: '노숙인 거주 및 이용시설',
                vaccine: '아스트라제네카',
                vaccination: '방문(보건소)',
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '5월',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: Wrap(
                children: [
                  _cell(
                    text: '항공승무원',
                    vaccine: '아스트라제네카',
                    vaccination: '보건소 등',
                  ),
                  _cell(
                    text: '65~74세 어르신',
                    vaccine: '아스트라제네카',
                    vaccination: '위탁의료기관',
                  ),
                ],
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '6월',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _cell(
                text: '65~74세 어르신' +
                    '\n- 장애인, 노인 방문 돌봄 종사자' +
                    '\n- 유치원,어린이집, 초등학교(1~2학년) 교사 등' +
                    '\n- 만성신장질환 (투석환자)' +
                    '\n- 만성중증호흡기질환' +
                    '\n- 의료기관 및 약국 종사자 (보건의료인)' +
                    '\n- 사회필수인력 (경찰, 해경, 소방, 군인 등)',
                vaccine: '아스트라제네카',
                vaccination: '위탁의료기관',
              ),
            ),
          ],
        ),
      ],
    );
  }

  _cell({
    required String text,
    required String vaccine,
    required String vaccination,
  }) {
    return Container(
      padding: EdgeInsets.all(Insets.xs),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '- $text',
                style: TextStyle(
                  fontSize: Sizes.xxs,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.sm,
              top: Insets.xs,
            ),
            child: Row(
              children: [
                Text(
                  vaccine,
                  style: TextStyle(
                    fontSize: Sizes.xxs,
                  ),
                ),
                SizedBox(width: Insets.sm),
                Text(
                  vaccination,
                  style: TextStyle(
                    fontSize: Sizes.xxs,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildSchduleTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(150),
        1: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            AppTableCell(
              text: '예약기간',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black54,
            ),
            AppTableCell(
              text: '대상자',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '2021.05.06. ~ 06.03.',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _schduleCell('70~74세 (1947~1951년),\n만성호흡기장애인\n'),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '2021.05.10. ~ 06.03.',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _schduleCell('\n65~69세 (1952~1956년)\n'),
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '2021.05.13. ~ 06.03.',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
              isFirstCell: true,
            ),
            TableCell(
              child: _schduleCell(
                  '60~64세 (1957~1961년)\n어린이집/유치원/초등1,2교사등\n조기접종 대상자 중 미접종자'),
            ),
          ],
        ),
      ],
    );
  }

  _schduleCell(String text) {
    return Container(
      padding: EdgeInsets.all(Insets.xs),
      child: Text(
        '$text',
        style: TextStyle(
          fontSize: Sizes.xs,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
