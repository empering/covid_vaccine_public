import 'package:covid_vaccine/pages/information/views/controllers/infomation_controller.dart';
import 'package:covid_vaccine/ui/theme/app_colors.dart';
import 'package:covid_vaccine/ui/theme/app_styles.dart';
import 'package:covid_vaccine/ui/widget/app_table.dart';
import 'package:covid_vaccine/ui/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InformationVaccine extends StatelessWidget {
  final index;

  InformationVaccine({this.index = -1});

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
                content: '어떤 백신이 접종되나요?',
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
                  content:
                      '국내 도입하는 백신은 바이러스 벡터 백신 2종(아스트라제네카 코로나19 백신, 얀센 코로나19 백신), mRNA 백신 2종(화이자 코로나19 백신, 모더나 코로나19 백신), 재조합 백신 1종(노바백스 코로나19 백신)에 대해 구매 계약을 체결하였습니다.',
                  textColor: AppColors.primary.withOpacity(0.8),
                  textSize: Sizes.sm,
                ),
                AppTextWithIcon(
                  content:
                      '현재 우리나라에서는 아스트라제네카 코로나19 백신(한국아스트라제네카코비드-19백신주, 2월 10일) 화이자 코로나19 백신(코미나티주, 3월5일), 얀센 코로나19 백신(코비드-19백신 얀센주, 4월7일)이 허가되었습니다.',
                  textColor: AppColors.primary.withOpacity(0.8),
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
                content: '백신별 차이점이 뭔가요?',
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
                _buildTable(),
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
        0: FixedColumnWidth(55),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            AppTableCell(
              text: '제조사',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black54,
            ),
            AppTableCell(
              text: '화이자',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
            AppTableCell(
              text: '모더나',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.primary,
            ),
            AppTableCell(
              text: '아스트라\n제네카',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.accent,
            ),
            AppTableCell(
              text: '얀센',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: AppColors.primary,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '백신명',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '코미나티주',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '한국아스트라제네카코비드-19백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '플랫폼',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: 'mRNA\n(핵산)백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: 'mRNA\n(핵산)백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '바이러스 벡터 백신',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '바이러스 벡터 백신',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '연령',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '만 16세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '만 18세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '만 18세\n이상',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '구성',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '다회 투여용 바이알',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '접종\n횟수',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '2회\n21일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2회\n28일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2회\n8~12주',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '1회',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '접종\n방법',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '0.3ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '0.ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '0.5ml\n근육주사',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '보관',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '-90~-60도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-20도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '-20도\n24개월',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '유통',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '2~8도\n5일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n30일',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n6개월',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '2~8도\n3개월',
              textColor: Colors.black54,
            ),
          ],
        ),
        TableRow(
          children: [
            AppTableCell(
              text: '개봉후',
              style: TextStyle(fontWeight: FontWeight.bold),
              cellColor: Colors.black45,
            ),
            AppTableCell(
              text: '실온 6시간',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '실온 6시간',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '실온 6시간\n30도 이하',
              textColor: Colors.black54,
            ),
            AppTableCell(
              text: '냉장 4~6시간',
              textColor: Colors.black54,
            ),
          ],
        ),
      ],
    );
  }
}
