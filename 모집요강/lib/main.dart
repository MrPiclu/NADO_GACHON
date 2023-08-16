///
/// 시작 페이지
/// - 앱 이름 = "무한길잡이"
/// - 기본 폰트 = 나눔
/// - 기능
///    1. 모집요강으로 이동하는 버튼
///    2. 전형가이드로 이동하는 버튼
///

import 'package:aiia/config.dart';
import 'package:aiia/admission_guideline/_frame.dart';
import 'package:aiia/estimation_guideline/_frame.dart';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  Today = DateTime.now();
  initializeDateFormatting().then((_) => runApp(MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'nanum'),
      title: "무한길잡이",
      home: Start(),
    );
  }
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Background,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("어떤 걸 보고 싶으신가요?",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /* 모집요강 */
                    ElevatedButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AdmissionGuideline())),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(140, 140),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                          textStyle: TextStyle(fontSize: 20)),
                        child: Text("모집요강", style: ts4)
                    ),
                    /* 전형 가이드 */
                    ElevatedButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EstimationGuideline())),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(140, 140),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            textStyle: TextStyle(fontSize: 20)),
                        child: Text("전형가이드", style: ts4)
                    ),
                  ],
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
        ),
      )
    );
  }
}
