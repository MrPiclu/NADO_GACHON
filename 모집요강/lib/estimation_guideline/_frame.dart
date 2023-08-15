///
/// 전형 가이드 틀
///

import 'package:aiia/config.dart';
import 'package:aiia/estimation_guideline/temp.dart';
import 'package:aiia/estimation_guideline/est_data.dart';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';

class EstimationGuideline extends StatefulWidget {
  const EstimationGuideline({Key? key}) : super(key: key);

  @override
  State<EstimationGuideline> createState() => _EstimationGuidelineState();
}

class _EstimationGuidelineState extends State<EstimationGuideline> {

  Estimation est = Estimation();

  final List<GlobalKey<AnimatedCircularChartState>> chartKeys = [
    GlobalKey<AnimatedCircularChartState>(), GlobalKey<AnimatedCircularChartState>()];
  late List<List<CircularSegmentEntry>> data;

  late List<String> screening = est.estimations;
  String? selectedAff;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: Background,
          child: SafeArea(child: Column(
              children: [
                /* 타이틀 */
                SizedBox(height: 10),
                Row(children: [
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text("◁", style: TextStyle(
                        fontSize: 30, color: Colors.white)),
                  ),
                  SizedBox(width: 8),
                  Text("전형 가이드", style: TextStyle(
                      fontSize: 20, color: Colors.white))
                ]),
                /* 검색창 */
                Container(
                  height: 35,
                  margin: EdgeInsets.only(top: 16, left: 16, right: 20),
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
                                  child: Text(selectedAff == null
                                      ? "전형"
                                      : selectedAff!)),
                            ),
                            Flexible(
                              flex: 1, fit: FlexFit.tight,
                              child: Container(child: Icon(
                                  Icons.arrow_drop_down)),
                            )
                          ]
                      ),
                    ),
                    items: screening.map((item) =>
                        DropdownMenuItem(
                          value: item,
                          child: Text(item,
                              style: const TextStyle(fontSize: 14)),
                        )).toList(),
                    value: selectedAff,
                    onChanged: (value) {
                      setState(() {
                        selectedAff = value;
                        est.setIndex(value!);
                        data = est.getChartData();
                        for (int i=0 ; i < data.length ; i++) {
                          if (chartKeys[i].currentState != null)
                          chartKeys[i].currentState!.updateData([
                            CircularStackEntry(data[i], rankKey: "Quarterly Profits")
                          ]);
                        }
                      });
                    },
                    dropdownStyleData: const DropdownStyleData(
                      maxHeight: 200,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                    dropdownSearchData: DropdownSearchData(
                      searchController: textEditingController,
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 4,
                          right: 8,
                          left: 8,
                        ),
                        child: TextFormField(
                          expands: true,
                          maxLines: null,
                          controller: textEditingController,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: 'Search for an item...',
                            hintStyle: const TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        return item.value.toString().contains(searchValue);
                      },
                    ),
                    onMenuStateChange: (isOpen) {
                      if (!isOpen) {
                        textEditingController.clear();
                      }
                    },
                  ),
                ),
                /* 설명 */
                if (selectedAff != null)
                  SingleChildScrollView(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        /* 평가 비율 */
                        AspectRatio(
                            aspectRatio: 2,
                            child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: data.asMap().entries.map((e) {
                                  return AspectRatio(aspectRatio: 1,
                                    child: Column(children: [
                                      AnimatedCircularChart(
                                          key: chartKeys[e.key],
                                          size: const Size(160, 160),
                                          initialChartData: [CircularStackEntry(e.value, rankKey: "Quarterly Profits")],
                                          chartType: CircularChartType.Pie
                                      ),
                                      Text("${e.key+1} 단계", style: ts7)
                                    ])
                                  );
                                }).toList()
                            )
                        ),
                        SizedBox(height: 10),
                        /* 전형 이름 */
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(selectedAff!, style: ts6)
                        ),
                        /* 지원 가능 학과 */
                        Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>Temp(name: selectedAff!))),
                                child: Text("지원 가능 학과 (클릭)", style: ts3)
                            )
                        ),
                        /* 전형비 */
                        Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            alignment: Alignment.centerLeft,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("전형비", style: ts3),
                                  SizedBox(width: 32),
                                  Text("￦ ${est.getCost()}", style: ts3)
                                ])
                        ),
                        /* 제출 서류 */
                        Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            alignment: Alignment.centerLeft,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("서류", style: ts3),
                                  SizedBox(width: 24),
                                  Column(children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Text("1번", style: ts3)
                                    ),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Text("2번", style: ts3)
                                    )
                                  ])
                                ])
                        ),
                        /* 세부 설명 */
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.topCenter
                        )
                      ])
                  )
              ]
          ))
      ),
    );
  }
}