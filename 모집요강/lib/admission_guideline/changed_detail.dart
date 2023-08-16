///
/// 주요 변경 사항
/// - 학과
///   1. 신설
///   2. 변경
/// - 평가 방법
///   1. 논술
///   2. 지역균형
///   3. 농어촌(교과)
/// - 전형변경
///   1. 사회기여자전형 폐지
///   2. 사회기여자전형 신설
///   3. 특성화고졸재직자전형 신설
///

import 'package:aiia/config.dart';
import 'package:flutter/material.dart';

class ChangedDetail extends StatefulWidget {
  const ChangedDetail({Key? key}) : super(key: key);

  @override
  State<ChangedDetail> createState() => _ChangedDetail1State();
}

class _ChangedDetail1State extends State<ChangedDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          /* 모집단위 */
          Container(
            padding: EdgeInsets.symmetric(vertical: 17.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("모집단위", style: ts1),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /* 신설 */
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("신설", style: ts2),
                                  Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("- 빅데이터경영학과", style: ts3),
                                            Text("- 차세대반도체설계전공", style: ts3),
                                            Text("- 바이오로직스학과", style: ts3),
                                            Text("- 클라우드공학과", style: ts3)
                                          ]))
                                ])),
                        /* 변경 */
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("변경", style: ts2),
                                  Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("- 패션산업학과 → 패션디자인전공", style: ts3),
                                            Text("- 반도체공학전공 → 시스템반도체전공", style: ts3),
                                            Text("- 스마트시티학과 → 스마트시티융합학과", style: ts3)
                                          ]))
                                ])),
                      ]),
                )
              ],
            ),
          ),
          /* 평가방법 */
          Container(
            padding: EdgeInsets.symmetric(vertical: 17.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("평가방법", style: ts1),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /* 논술 */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("논술", style: ts2),
                                    Container(
                                      margin: EdgeInsets.only(left: 12, top: 5),
                                      child: Table(children: [
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 전",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 후",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("논술 80%\n학생부교과 20%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("논술 60%\n학생부교과 40%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                      ]),
                                    )
                                  ])),
                          /* 지역균형 */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("지역균형", style: ts2),
                                    Container(
                                      margin: EdgeInsets.only(left: 12, top: 5),
                                      child: Table(children: [
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 전",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 후",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("1단계: 학생부교과 100% (7배수)",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("1단계: 학생부교과 100% (6배수)",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("2단계: 1단계평가 50%\n+ 면접 50%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("2단계: 1단계평가 50%\n+ 면접 50%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                      ]),
                                    )
                                  ])),
                          /* 농어촌(교과) */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("농어촌(교과)", style: ts2),
                                    Container(
                                      margin: EdgeInsets.only(left: 12, top: 5),
                                      child: Table(children: [
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 전",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: table_label,
                                              child: Center(
                                                  child: Text("변경 후",
                                                      style: ts5,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                        TableRow(children: [
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("학생부교과 100%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("1단계: 학생부교과 100% (6배수)",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                        ]),
                                        TableRow(children: [
                                          Container(
                                            margin: EdgeInsets.all(1),
                                            padding: EdgeInsets.symmetric(vertical: 5),
                                            color: Colors.white,
                                            height: 38,
                                          ),
                                          Container(
                                              margin: EdgeInsets.all(1),
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text("2단계: 1단계평가 50%\n+ 면접 50%",
                                                      style: ts4,
                                                      textAlign: TextAlign.center))),
                                        ])
                                      ]),
                                    )
                                  ]))
                        ]))
              ],
            ),
          ),
          /* 전형변경 */
          Container(
            padding: EdgeInsets.symmetric(vertical: 17.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("전형변경", style: ts1),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /* 사회기여자전형 폐지 */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("(폐지) 사회기여자전형 폐지", style: ts2),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("- 국가보훈대상자", style: ts3),
                                              Text("- 군 재직자의 자녀", style:ts3),
                                              Text("- 경찰, 소방직공무원의 자녀", style: ts3),
                                              Text("- 집배원, 환경미화공무원, 교도관의 자녀", style: ts3),
                                              Text("- 다자녀(3인 이상)가구의 자녀", style: ts3)
                                            ]))
                                  ])),
                          /* 기회균형전형 신설 */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("(New) 사회기여자전형", style: ts2),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("- 106명 모집", style: ts3),
                                              Text("- 기초생활수급자, 차상위계층, 한부모가족 지원대상자", style: ts3),
                                              Text("- 국가보훈대상자", style: ts3),
                                              Text("- 서해 5도 학생", style: ts3),
                                              Text("- 자립지원 대상 아동", style: ts3),
                                              Text("- 북한이탈주민 & 제3국 출생 북한이탈주민 자녀", style: ts3),
                                              Text("- 만학도(입학년도 기준 만 25세 이상)", style: ts3)
                                            ]))
                                  ])),
                          /* 특성화고졸제직자전형 신설 */
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("(New) 특성화고졸재직자전형", style: ts2),
                                    Container(
                                        margin: EdgeInsets.only(left: 12, top: 5),
                                        child: Table(children: [
                                          TableRow(children: [
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: table_label,
                                                child: Center(
                                                    child: Text("학과",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: table_label,
                                                child: Center(
                                                    child: Text("인원",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                          ]),
                                          TableRow(children: [
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: Colors.white,
                                                child: Center(
                                                    child: Text("경영학부",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: Colors.white,
                                                child: Center(
                                                    child: Text("90",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                          ]),
                                          TableRow(children: [
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: Colors.white,
                                                child: Center(
                                                    child: Text("컴퓨터공학전공",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                            Container(
                                                margin: EdgeInsets.all(1),
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                color: Colors.white,
                                                child: Center(
                                                    child: Text("90",
                                                        style: ts4,
                                                        textAlign: TextAlign.center))),
                                          ]),
                                        ]))
                                  ])),
                        ]))
              ],
            ),
          )
        ]));
  }
}
