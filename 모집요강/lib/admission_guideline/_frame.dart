///
/// 모집요강 틀
/// - 학교 홍보
/// - 주요 변경 사항
/// - 모집 인원
/// - 전형 일정
///

import 'package:aiia/config.dart';
import 'package:aiia/admission_guideline/promotion.dart';
import 'package:aiia/admission_guideline/changed_detail.dart';
import 'package:aiia/admission_guideline/population.dart';
import 'package:aiia/admission_guideline/schedule.dart';

import 'package:flutter/material.dart';

class AdmissionGuideline extends StatefulWidget {
  const AdmissionGuideline({Key? key}) : super(key: key);

  @override
  State<AdmissionGuideline> createState() => _AdmissionGuidelineState();
}

class _AdmissionGuidelineState extends State<AdmissionGuideline> {

  // 페이지 인덱스
  int _idx = 0;
  // 페이지 리스트
  List<Widget> _page = [Promotion(), ChangedDetail(), Population(), Schedule()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Background,
        child: SafeArea(
          child: Column(
            children: [
              /* Appbar */
              Container(
                height: 84,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* 타이틀 */
                    Row(children: [
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text("◁", style: TextStyle(
                          fontSize: 30, color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      Text("모집요강", style: TextStyle(
                          fontSize: 20, color: Colors.white))
                    ]),
                    SizedBox(height: 17),
                    /* 카테고리 */
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /* 학교 홍보 */
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.5),
                              child: GestureDetector(
                                onTap: () {
                                  if (_idx != 0) setState(() => _idx = 0);
                                },
                                child: Column(
                                  children: [
                                    Text("학교 홍보",
                                      style: TextStyle(fontSize: 14, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                        width: 58, height: 4,
                                        color: _idx == 0 ? Color(0xFF54ADFF) : null
                                    )
                                  ],
                                ),
                              )
                          ),
                          /* 주요 변경 사항 */
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.5),
                              child: GestureDetector(
                                onTap: () {
                                  if (_idx != 1) setState(() => _idx = 1);
                                },
                                child: Column(
                                  children: [
                                    Text("주요 변경 사항",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: 86, height: 4,
                                      color: _idx == 1 ? Color(0xFF54ADFF) : null,
                                    )
                                  ],
                                ),
                              )
                          ),
                          /* 모집 인원 */
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.5),
                              child: GestureDetector(
                                onTap: () {
                                  if (_idx != 2) setState(() => _idx = 2);
                                },
                                child: Column(
                                  children: [
                                    Text("모집 인원",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: 58, height: 4,
                                      color: _idx == 2 ? Color(0xFF54ADFF) : null,
                                    )
                                  ],
                                ),
                              )
                          ),
                          /* 전형 일정 */
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.5),
                              child: GestureDetector(
                                onTap: () {
                                  if (_idx != 3) setState(() => _idx = 3);
                                },
                                child: Column(
                                  children: [
                                    Text("전형 일정",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: 58, height: 4,
                                      color: _idx == 3 ? Color(0xFF54ADFF) : null,
                                    )
                                  ],
                                ),
                              )
                          )
                        ]
                      ),
                    )
                  ]
                ),
              ),
              Divider(color: Color(0xFF9B9B9B), height: 1, thickness: 1),
              /* Main */
              Expanded(child: _page[_idx])
            ],
          ),
        ),
      ),
    );
  }
}

