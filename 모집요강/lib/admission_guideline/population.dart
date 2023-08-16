///
/// 모집 인원
/// - 데이터 모두 Hard coding
/// - 검색창
///   - 대학
///   - 학과
/// - 모집인원 테이블
///

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Population extends StatefulWidget {
  const Population({Key? key}) : super(key: key);

  @override
  State<Population> createState() => _Population1State();
}

class _Population1State extends State<Population> {
  
  static Map<String, List<int>> recuitments = {
    "경영학부": [1, 91, 46, 25, 2, 0, 50, 0, 3, 5, 0, 90, 0, 0],
    "빅데이터경영학과": [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    "금융수학과": [1, 14, 6, 6, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "미디어커뮤니케이션학과": [2, 13, 7, 6, 2, 0, 11, 0, 2, 2, 0, 0, 0, 0],
    "관광경영학과": [2, 11, 6, 6, 2, 0, 8, 0, 1, 2, 0, 0, 0, 0],
    "경제학과": [2, 26, 10, 8, 2, 0, 15, 0, 2, 2, 0, 0, 0, 0],
    "의료산업경영학과": [2, 13, 6, 6, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    "응용통계학과": [2, 13, 6, 6, 2, 0, 7, 0, 1, 0, 0, 0, 0, 0],
    "사회복지학과": [2, 11, 6, 6, 2, 0, 9, 0, 1, 2, 0, 0, 0, 0],
    "유아교육학과": [2, 15, 6, 6, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0],
    "심리학과": [2, 10, 6, 6, 2, 0, 8, 0, 2, 0, 0, 0, 0, 0],
    "패션산업학과": [2, 8, 6, 5, 2, 0, 6, 0, 2, 3, 0, 0, 0, 0],
    "한국어문학과": [3, 11, 6, 6, 2, 0, 8, 0, 1, 0, 0, 0, 0, 0],
    "외국어계열": [3, 61, 25, 24, 6, 0, 30, 0, 4, 0, 0, 0, 0, 0],
    "법학과": [4, 22, 9, 9, 3, 0, 11, 0, 2, 0, 0, 0, 0, 0],
    "경찰행정학과": [4, 10, 6, 6, 2, 0, 9, 0, 2, 0, 0, 0, 0, 0],
    "행정학과": [4, 10, 6, 7, 2, 0, 7, 0, 1, 2, 0, 0, 0, 0],
    "자유전공학부": [11, 20, 11, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    "도시계획조경학부": [5, 20, 10, 7, 0, 0, 7, 0, 2, 1, 0, 0, 0, 0],
    "건축학부": [5, 30, 14, 10, 3, 0, 11, 0, 2, 3, 0, 0, 0, 0],
    "설비/소방공학과": [5, 18, 10, 7, 2, 0, 8, 0, 1, 2, 0, 0, 0, 0],
    "화공생명공학전공": [5, 23, 13, 8, 2, 0, 16, 0, 2, 2, 0, 0, 0, 0],
    "베터리공학전공": [5, 11, 7, 6, 0, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    "기계공학전공": [5, 21, 12, 8, 2, 0, 16, 0, 2, 3, 0, 0, 0, 0],
    "산업공학전공": [5, 12, 7, 5, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    "스마트팩토리전공": [5, 12, 7, 5, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "토목환경공학과": [5, 13, 7, 5, 0, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    "신소재공학과": [5, 13, 7, 5, 2, 0, 6, 0, 2, 2, 0, 0, 0, 0],
    "식품생명공학과": [6, 14, 7, 5, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    "식품영양학과": [6, 13, 7, 6, 2, 0, 6, 0, 2, 2, 0, 0, 0, 0],
    "바이오나노학과": [6, 13, 7, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "생명과학과": [6, 13, 6, 6, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "물리학과": [6, 12, 6, 6, 2, 0, 7, 0, 0, 0, 0, 0, 0, 0],
    "화학과": [6, 12, 6, 6, 2, 0, 7, 0, 2, 0, 0, 0, 0, 0],
    "소프트웨어전공": [8, 21, 13, 8, 2, 0, 0, 20, 1, 0, 0, 0, 0, 0],
    "인공지능전공": [8, 35, 16, 15, 2, 0, 0, 30, 2, 0, 0, 0, 0, 0],
    "컴퓨터공학전공": [8, 35, 18, 15, 2, 0, 22, 0, 2, 5, 0, 90, 0, 0],
    "스마트보안전공": [8, 13, 6, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "전자공학전공": [7, 30, 16, 13, 2, 0, 18, 0, 2, 3, 0, 0, 0, 0],
    "시스템반도체전공": [7, 12, 6, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "차세대반도체설계전공": [7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    "전기공학과": [8, 22, 9, 7, 2, 0, 10, 0, 2, 3, 0, 0, 0, 0],
    "스마트시티학과": [8, 12, 6, 5, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "의공학과": [8, 12, 6, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "간호학과": [14, 83, 42, 20, 3, 0, 45, 0, 2, 2, 0, 0, 0, 0],
    "바이오로직스학과": [13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    "치위생학과": [15, 9, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "방사선학과": [15, 10, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "물리치료학과": [15, 10, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    "응급구조학과": [15, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0],
    "운동재활학과": [10, 10, 5, 5, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    "의예과": [12, 0, 5, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0],
    "한의예과": [9, 0, 5, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0],
    "약학과": [13, 0, 3, 0, 1, 12, 0, 0, 0, 0, 3, 0, 0, 0],
    "회화/조소전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0],
    "디자인전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0],
    "성악전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0],
    "기악전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0],
    "작곡전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0],
    "체육전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0],
    "태권도전공": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0],
    "연기예술학과": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0],
    "바이오의료기기학과": [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40],
    "게임ㆍ영상학과": [8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60],
    "미래자동차학과": [5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40],
    "반도체디스플레이학과": [7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50],
    "반도체설계학과": [7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50]
  };
  static List<String> colleges = [
    "전체", "경영대학", "사회과학대학", "인문대학", "법과대학", "공과대학",
    "바이오나노대학", "반도체대학", "IT융합대학", "한의과대학", "예술ㆍ체육대학",
    "가천리버럴아츠", "의과대학", "약학대학", "간호대학", "의과학대학"
  ];
  static List<String> estimations = [
    "논술", "학생부우수자", "지역균형", "농어촌(교과)", "가천의약학",
    "가천바람개비", "가천AI/SW", "농어촌(종합)", "특성화고교", "교육기회균형",
    "특성화고졸재직자", "실기우수자", "조기취업형계약학과"
  ];
  List<String> departments = [];
  List<DataRow> table_data = [];

  String? selected_college;
  String? selected_depart;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    table_data = updataTableData(null, null);
    departments = updateDepart(null, null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        /* 검색창 */
        Container(
          child: Column(
            children: [
              /* 대학 */
              Container(
                height: 35,
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
                            child: Text(selected_college == null ? "대학" : selected_college!)),
                        ),
                        Flexible(
                          flex: 1, fit: FlexFit.tight,
                          child: Container(child: Icon(Icons.arrow_drop_down)),
                        )
                      ]
                    ),
                  ),
                  items: colleges.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item,
                      style: const TextStyle(fontSize: 14)),
                  )).toList(),
                  value: selected_college,
                  onChanged: (value) {
                    setState(() {
                      selected_college = (value == colleges[0]) ? null : value;
                      selected_depart = null;
                      departments = updateDepart(value, null);
                      table_data = updataTableData(value, null);
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
                  //This to clear the search value when you close the menu
                  onMenuStateChange: (isOpen) {
                    if (!isOpen) {
                      textEditingController.clear();
                    }
                  },
                ),
              ),
              /* 학과 */
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
                                child: Text(selected_depart == null ? "학과" : selected_depart!)),
                          ),
                          Flexible(
                            flex: 1, fit: FlexFit.tight,
                            child: Container(child: Icon(Icons.arrow_drop_down)),
                          )
                        ]
                    ),
                  ),
                  items: departments.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item,
                        style: const TextStyle(fontSize: 14)),
                  )).toList(),
                  value: selected_depart,
                  onChanged: (value) {
                    setState(() {
                      selected_depart = value;
                      departments = updateDepart(null, value);
                      table_data = updataTableData(null, value);
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
                  //This to clear the search value when you close the menu
                  onMenuStateChange: (isOpen) {
                    if (!isOpen) {
                      textEditingController.clear();
                    }
                  },
                )
              )
            ]
          )
        ),
        /* 테이블 */
        Expanded(child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(children: [
              /* Row Label */
              DataTable(
                  columnSpacing: 10,
                  headingRowColor: MaterialStateProperty.all(Colors.blue[400]),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  columns: [
                    DataColumn(label: Text("모집단위"))
                  ],
                  rows: departments.map((e) {
                    String s;
                    if (e == "빅데이터경영학과") { s = "빅데이터\n경영학과"; }
                    else if (e == "미디어커뮤니케이션학과") { s = "미디어\n커뮤니케이션학과"; }
                    else if (e == "차세대반도체설계전공") { s = "차세대반도체\n설계전공"; }
                    else if (e == "스마트시티융합학과") { s = "스마트시티\n융합학과"; }
                    else if (e == "바이오의료기기학과") { s = "바이오\n의료기기학과"; }
                    else if (e == "반도체디스플레이학과") { s = "반도체\n디스플레이학과"; }
                    else { s = e; }
                    return DataRow(cells: [DataCell(Text(s))]);
                  }).toList()),
              /* Row Data */
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      headingRowColor: MaterialStateProperty.all(Colors.blue[200]),
                      columnSpacing: 20,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      /* Column Label */
                      columns: estimations.map((e) {
                        String s;
                        if (e == "특성화고졸재직자") { s = "특성화\n고졸재직자"; }
                        else if (e == "조기취업형계약학과") { s = "조기취업형\n계약학과"; }
                        else { s = e; }
                        return DataColumn(label: Text(s));
                      }).toList(),
                      /* Column Data */
                      rows: table_data
                  ),
                ),
              )
            ])
          ),
        ))
      ]
    );
  }

  // 행(학과) 라벨 업데이트
  List<String> updateDepart(String? c, String? d) {
    List<String> ret = [];
    if (d != null) ret.add(d);
    else if (c != null && c != colleges[0]) {
      int idx_college = colleges.indexOf(c);
      recuitments.forEach((key, value) {
        if (value[0] == idx_college) ret.add(key);
      });
    }
    else {
      ret = recuitments.keys.toList();
    }
    return ret;
  }

  // 테이블 데이터 업데이트
  List<DataRow> updataTableData(String? c, String? d) {
    if (d != null) return [
      DataRow(cells: recuitments[d]!.sublist(1).map((e) =>
          DataCell(Center(child: Text((e > 0) ? e.toString() : "")))).toList())
    ];
    else if (c != null && c != colleges[0]) {
      int idx_college = colleges.indexOf(c);
      List<DataRow> ret = [];
      recuitments.values.forEach((row) {
        if (row[0] == idx_college)
          ret.add(
            DataRow(cells: row.sublist(1).map((n) =>
                DataCell(Center(child: Text((n > 0) ? n.toString() : ""))))
                .toList())
          );
      });
      return ret;
    }
    List<DataRow> ret = [];
    recuitments.values.forEach((row) {
      ret.add(DataRow(cells: row.sublist(1).map((n) =>
          DataCell(Center(child: Text((n > 0) ? n.toString() : ""))))
          .toList()));
    });
    return ret;
  }
}