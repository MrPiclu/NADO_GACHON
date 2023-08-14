///
/// 전형 소개
///

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Introduction1 extends StatefulWidget {
  const Introduction1({Key? key}) : super(key: key);

  @override
  State<Introduction1> createState() => _Introduction1State();
}

class _Introduction1State extends State<Introduction1> {

  final List<String> evaluations = [
    "논술: 논술",
    "교과: 학생부우수자", "교과: 지역균형", "교과: 농어촌(교과)",
    "종합: 가천바람개비", "종합: 가천의약학", "종합: 가천 AIㆍSW",
    "종합: 기회균형", "종합: 농어촌(종합)", "종합: 특성화고교",
    "종합: 교육기회균형", "종합: 특성화고졸재직자", "종합: 조기취업형 계약학과",
    "실기: 미술ㆍ디자인", "실기: 음악", "실기: 체육", "실기: 연기예술"
  ];
  String? selectedValue;
  int touchedIndex = -1;

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.redAccent,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.amber,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.indigo,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        /* 검색창 */
        Container(
          height: 35,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: DropdownButton2<String>(
            isExpanded: true,
            customButton: Container(
              height: 35,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                  children: [
                    Flexible(
                        flex: 1, fit: FlexFit.tight,
                        child: Container(child: Icon(Icons.search))
                    ),
                    Flexible(
                      flex: 10, fit: FlexFit.tight,
                      child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(selectedValue == null ? "전형" : selectedValue!)),
                    ),
                    Flexible(
                      flex: 1, fit: FlexFit.tight,
                      child: Container(child: Icon(Icons.arrow_drop_down)),
                    )
                  ]
              ),
            ),
            items: evaluations.map((item) => DropdownMenuItem(
              value: item,
              child: Text(item, style: const TextStyle(fontSize: 14)),
            )).toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() => selectedValue = value);
            },
            dropdownStyleData: const DropdownStyleData(maxHeight: 200),
            menuItemStyleData: const MenuItemStyleData(height: 40)
          ),
        ),
        /* 전형 소개 */
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex = pieTouchResponse
                          .touchedSection!.touchedSectionIndex;
                    });
                  },
                ),
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: showingSections(),
              ),
            ),
          )
        )
      ],
    );
  }
}