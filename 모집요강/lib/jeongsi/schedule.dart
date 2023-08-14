///
/// 전형 일정
///

import 'package:flutter/material.dart';

class Schedule2 extends StatefulWidget {
  const Schedule2({Key? key}) : super(key: key);

  @override
  State<Schedule2> createState() => _Schedule1State();
}

class _Schedule1State extends State<Schedule2> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 330, height: 440,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* 날짜 변경 */
              Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("◀", style: TextStyle(
                        fontSize: 40, color: Colors.white)),
                    SizedBox(width: 10),
                    Text("YYYY.MM", style: TextStyle(
                        fontSize: 20, color: Colors.white)),
                    SizedBox(width: 10),
                    Text("▶", style: TextStyle(
                        fontSize: 40, color: Colors.white))
                  ]
              ),
              /* 달력 */
              Container(
                  width: 330, height: 330,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 30)
              )
            ],
          ),
        )
    );
  }
}