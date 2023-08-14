///
/// 시작 페이지
///

import 'package:aiia/config.dart';
import 'package:aiia/frame.dart';

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
      title: "모집요강",
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
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white)),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /* 수시 */
                    ElevatedButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Frame(type: "수시"))),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            fixedSize: Size(140, 140),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            textStyle: TextStyle(fontSize: 20, fontFamily: 'text')),
                        child: Text("수시")
                    ),
                    /* 정시 */
                    ElevatedButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Frame(type: "정시"))),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            fixedSize: Size(140, 140),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            textStyle: TextStyle(fontSize: 20, fontFamily: 'text')),
                        child: Text("정시")
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
