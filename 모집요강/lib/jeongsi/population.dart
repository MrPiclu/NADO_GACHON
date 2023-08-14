///
/// 모집 인원
///

import 'package:flutter/material.dart';

class Population2 extends StatefulWidget {
  const Population2({Key? key}) : super(key: key);

  @override
  State<Population2> createState() => _Population1State();
}

class _Population1State extends State<Population2> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 36,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 20, right: 20, top: 24),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          ),
          Expanded(child: Container(
            color: Colors.white,
          ))
        ]
    );
  }
}