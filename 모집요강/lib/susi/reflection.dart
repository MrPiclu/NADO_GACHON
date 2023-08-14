///
/// 학생부 반영
///

import 'package:aiia/config.dart';

import 'package:flutter/material.dart';

class Reflection1 extends StatefulWidget {
  const Reflection1({Key? key}) : super(key: key);

  @override
  State<Reflection1> createState() => _Reflection1State();
}

class _Reflection1State extends State<Reflection1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        /* 단계별 평가방법 */
        Container(
            padding: EdgeInsets.symmetric(vertical: 17.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* 1단계 */
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 30, height: 30,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text("1", style: TextStyle(fontSize: 16))
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200, height: 10,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: Colors.redAccent,
                    )
                  ]
                ),
                /* 2단계 */
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 30, height: 30,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                            child: Text("2", style: TextStyle(fontSize: 16))
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 100, height: 10,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.redAccent,
                      ),
                      Container(
                        width: 100, height: 10,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.orangeAccent,
                      ),
                    ]
                )
              ]
            )
          ),
        /* 평가자료 */
        Container(),
        /* 평가요소 */
        Container(),
        /* QnA */
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 17.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Q & A", style: ts1),
              Container(
                height: 70,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20))
              ),
            ]
          )
        )
      ])
    );
  }
}