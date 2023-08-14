///
/// 변경 사항
///

import 'package:flutter/material.dart';

class ChangedDetail2 extends StatefulWidget {
  const ChangedDetail2({Key? key}) : super(key: key);

  @override
  State<ChangedDetail2> createState() => _ChangedDetail1State();
}

class _ChangedDetail1State extends State<ChangedDetail2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
        child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("● 내용물",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Container(
                        height: 145, color: Colors.white,
                        margin: EdgeInsets.only(top: 10)
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("● 내용물",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Container(
                        height: 145, color: Colors.white,
                        margin: EdgeInsets.only(top: 10)
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("● 내용물",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Container(
                        height: 145, color: Colors.white,
                        margin: EdgeInsets.only(top: 10)
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("● 내용물",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Container(
                        height: 145, color: Colors.white,
                        margin: EdgeInsets.only(top: 10)
                    )
                  ],
                ),
              )
            ]
        ));
  }
}
