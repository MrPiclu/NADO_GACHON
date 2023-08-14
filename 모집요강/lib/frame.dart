///
/// 페이지 틀
///

import 'package:aiia/config.dart';
import 'package:aiia/susi/all.dart';
import 'package:aiia/jeongsi/all.dart';

import 'package:flutter/material.dart';

class Frame extends StatefulWidget {
  const Frame({Key? key, required this.type}) : super(key: key);

  // 수시인가? 정시인가?
  final String type;

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {

  // 페이지 인덱스
  int _idx = 0;
  // 페이지 리스트
  Map<String, List> _page = {
    "수시" : [ChangedDetail1(), Population1(), Schedule1(), Introduction1(), Reflection1()],
    "정시" : [ChangedDetail2(), Population2(), Schedule2(), Introduction2(), Reflection2()]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: Background,
          child: SafeArea(
            child: Column(
              children: [
                /* Appbar */
                Container(
                  height: 84,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /* 타이틀 */
                      Row(children: [
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Text("◁", style: TextStyle(
                            fontSize: 24, color: Colors.white)),
                        ),
                        SizedBox(width: 8),
                        Text("모집요강 / " + widget.type, style: TextStyle(
                          fontSize: 20, color: Colors.white))
                      ]),
                      SizedBox(height: 24),
                      /* 카테고리 */
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            /* 주요 변경 사항 */
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.5),
                                child: GestureDetector(
                                  onTap: () {
                                    if (_idx != 0) setState(() => _idx = 0);
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
                                        color: _idx == 0 ? Color(0xFF54ADFF) : null,
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
                                    if (_idx != 1) setState(() => _idx = 1);
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
                                        color: _idx == 1 ? Color(0xFF54ADFF) : null,
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
                                    if (_idx != 2) setState(() => _idx = 2);
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
                                        color: _idx == 2 ? Color(0xFF54ADFF) : null,
                                      )
                                    ],
                                  ),
                                )
                            ),
                            /* 전형 소개 */
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.5),
                                child: GestureDetector(
                                  onTap: () {
                                    if (_idx != 3) setState(() => _idx = 3);
                                  },
                                  child: Column(
                                    children: [
                                      Text("전형 소개",
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
                            ),
                            /* 성적 반영 */
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.5),
                                child: GestureDetector(
                                  onTap: () {
                                    if (_idx != 4) setState(() => _idx = 4);
                                  },
                                  child: Column(
                                    children: [
                                      Text(widget.type == "수시" ? "학생부 반영" : "수능 반영",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        width: widget.type == "수시" ? 70 : 58, height: 4,
                                        color: _idx == 4 ? Color(0xFF54ADFF) : null,
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ]
                        ),
                      )
                    ]
                  ),
                ),
                Divider(
                  color: Color(0xFF9B9B9B),
                  height: 1, thickness: 1
                ),
                /* Main */
                Container(
                  height: MediaQuery.of(context).size.height - 109,
                  width: MediaQuery.of(context).size.width,
                  child: _page[widget.type]![_idx],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

