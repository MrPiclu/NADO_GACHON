///
/// 모집 인원
///

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Population extends StatefulWidget {
  const Population({Key? key}) : super(key: key);

  @override
  State<Population> createState() => _Population1State();
}

class _Population1State extends State<Population> {

  static List<String> recruit_column = [
    "논술", "학생부우수자", "지역균형", "농어촌(교과)", "가천의약학",
    "가천바람개비", "가천AI/SW", "농어촌(종합)", "특성화고교", "교육기회균형",
    "특성화고졸재직자", "실기우수자", "조기취업형계약학과"
  ];
  static List<List<dynamic>> recruit_data = [
    ["인문", "경영학부", 91, 46, 25, 2, 0, 50, 0, 3, 5, 0, 90, 0, 0],
    ["자연", "빅데이터경영학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "금융수학과", 14, 6, 6, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["인문", "미디어커뮤니케이션학과", 13, 7, 6, 2, 0, 11, 0, 2, 2, 0, 0, 0, 0],
    ["인문", "관광경영학과", 11, 6, 6, 2, 0, 8, 0, 1, 2, 0, 0, 0, 0],
    ["인문", "경제학과", 26, 10, 8, 2, 0, 15, 0, 2, 2, 0, 0, 0, 0],
    ["인문", "의료산업경영학과", 13, 6, 6, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    ["인문", "응용통계학과", 13, 6, 6, 2, 0, 7, 0, 1, 0, 0, 0, 0, 0],
    ["인문", "사회복지학과", 11, 6, 6, 2, 0, 9, 0, 1, 2, 0, 0, 0, 0],
    ["인문", "유아교육학과", 15, 6, 6, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0],
    ["인문", "심리학과", 10, 6, 6, 2, 0, 8, 0, 2, 0, 0, 0, 0, 0],
    ["인문", "패션산업학과", 8, 6, 5, 2, 0, 6, 0, 2, 3, 0, 0, 0, 0],
    ["인문", "한국어문학과", 11, 6, 6, 2, 0, 8, 0, 1, 0, 0, 0, 0, 0],
    ["인문", "외국어계열", 61, 25, 24, 6, 0, 30, 0, 4, 0, 0, 0, 0, 0],
    ["인문", "법학과", 22, 9, 9, 3, 0, 11, 0, 2, 0, 0, 0, 0, 0],
    ["인문", "경찰행정학과", 10, 6, 6, 2, 0, 9, 0, 2, 0, 0, 0, 0, 0],
    ["인문", "행정학과", 10, 6, 7, 2, 0, 7, 0, 1, 2, 0, 0, 0, 0],
    ["인문", "자유전공학부", 20, 11, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "도시계획조경학부", 20, 10, 7, 0, 0, 7, 0, 2, 1, 0, 0, 0, 0],
    ["자연", "건축학부", 30, 14, 10, 3, 0, 11, 0, 2, 3, 0, 0, 0, 0],
    ["자연", "설비/소방공학과", 18, 10, 7, 2, 0, 8, 0, 1, 2, 0, 0, 0, 0],
    ["자연", "화공생명공학전공", 23, 13, 8, 2, 0, 16, 0, 2, 2, 0, 0, 0, 0],
    ["자연", "베터리공학전공", 11, 7, 6, 0, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    ["자연", "기계공학전공", 21, 12, 8, 2, 0, 16, 0, 2, 3, 0, 0, 0, 0],
    ["자연", "산업공학전공", 12, 7, 5, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    ["자연", "스마트팩토리전공", 12, 7, 5, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "토목환경공학과", 13, 7, 5, 0, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    ["자연", "신소재공학과", 13, 7, 5, 2, 0, 6, 0, 2, 2, 0, 0, 0, 0],
    ["자연", "식품생명공학과", 14, 7, 5, 2, 0, 6, 0, 0, 2, 0, 0, 0, 0],
    ["자연", "식품영양학과", 13, 7, 6, 2, 0, 6, 0, 2, 2, 0, 0, 0, 0],
    ["자연", "바이오나노학과", 13, 7, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "생명과학과", 13, 6, 6, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["자연", "물리학과", 12, 6, 6, 2, 0, 7, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "화학과", 12, 6, 6, 2, 0, 7, 0, 2, 0, 0, 0, 0, 0],
    ["자연", "소프트웨어전공", 21, 13, 8, 2, 0, 0, 20, 1, 0, 0, 0, 0, 0],
    ["자연", "인공지능전공", 35, 16, 15, 2, 0, 0, 30, 2, 0, 0, 0, 0, 0],
    ["자연", "컴퓨터공학전공", 35, 18, 15, 2, 0, 22, 0, 2, 5, 0, 90, 0, 0],
    ["자연", "스마트보안전공", 13, 6, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "전자공학과", 30, 16, 13, 2, 0, 18, 0, 2, 3, 0, 0, 0, 0],
    ["자연", "시스템반도체전공", 12, 6, 6, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "차세대반도체설계전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "전기공학과", 22, 9, 7, 2, 0, 10, 0, 2, 3, 0, 0, 0, 0],
    ["자연", "스마트시티융합학과", 12, 6, 5, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "의공학과", 12, 6, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["자연", "간호학과", 83, 42, 20, 3, 0, 45, 0, 2, 2, 0, 0, 0, 0],
    ["자연", "바이오로직스학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "치위생학과", 9, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["자연", "방사선학과", 10, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["자연", "물리치료학과", 10, 5, 5, 2, 0, 6, 0, 1, 0, 0, 0, 0, 0],
    ["자연", "응급구조학과", 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "운동재활학과", 10, 5, 5, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "의예과", 0, 5, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "한의예과", 0, 5, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0],
    ["자연", "약학과", 0, 3, 0, 1, 12, 0, 0, 0, 0, 3, 0, 0, 0],
    ["예체능", "회화/조소전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0],
    ["예체능", "디자인전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0],
    ["예체능", "성악전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0],
    ["예체능", "기악전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0],
    ["예체능", "작곡전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0],
    ["예체능", "체육전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0],
    ["예체능", "태권도전공", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0],
    ["예체능", "연기예술학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0],
    ["자연", "바이오의료기기학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40],
    ["자연", "게임영상학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60],
    ["자연", "미래자동차학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40],
    ["자연", "반도체디스플레이학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50],
    ["자연", "반도체설계학과", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50]
  ];
  List<List<dynamic>> arr = recruit_data;

  List<String> colleges = [
    "경영대학", "사회과학대학", "인문대학", "법과대학", "공과대학",
    "바이오나노대학", "반도체대학", "IT융합대학", "한의과대학", "예술ㆍ체육대학",
    "가천리버럴아츠", "의과대학", "약학대학", "간호대학", "의과학대학"
  ];
  List<String> departments = [];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

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
                            child: Text(selectedValue == null ? "대학" : selectedValue!)),
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
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
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
                                child: Text(selectedValue == null ? "학과" : selectedValue!)),
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
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
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
        /* 모집인원 */
        Expanded(child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(children: [
              DataTable(
                  columnSpacing: 10,
                  headingRowColor: MaterialStateProperty.all(Colors.blue[300]),
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
                  rows: arr.map((row) {
                    String s;
                    if (row[1] == "빅데이터경영학과") { s = "빅데이터\n경영학과"; }
                    else if (row[1] == "미디어커뮤니케이션학과") { s = "미디어\n커뮤니케이션학과"; }
                    else if (row[1] == "차세대반도체설계전공") { s = "차세대반도체\n설계전공"; }
                    else if (row[1] == "스마트시티융합학과") { s = "스마트시티\n융합학과"; }
                    else if (row[1] == "바이오의료기기학과") { s = "바이오\n의료기기학과"; }
                    else if (row[1] == "반도체디스플레이학과") { s = "반도체\n디스플레이학과"; }
                    else { s = row[1]; }
                    return DataRow(cells: [DataCell(Text(s))]);
                  }).toList()),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      headingRowColor: MaterialStateProperty.all(Colors.blue[100]),
                      columnSpacing: 20,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      columns: recruit_column.map((e) {
                        String s;
                        if (e == "특성화고졸재직자") { s = "특성화\n고졸재직자"; }
                        else if (e == "조기취업형계약학과") { s = "조기취업형\n계약학과"; }
                        else { s = e; }
                        return DataColumn(label: Text(s));
                      }).toList(),
                      rows: arr.map((row) => DataRow(
                          cells: row.sublist(2).map((cell) => DataCell(
                              Center(child: Text((cell > 0) ? cell.toString() : ""))
                          )).toList()
                      )).toList()
                  ),
                ),
              )
            ])
          ),
        ))
      ]
    );
  }
}