///
/// 전형 소개
///

import 'package:flutter/material.dart';

class Introduction2 extends StatefulWidget {
  const Introduction2({Key? key}) : super(key: key);

  @override
  State<Introduction2> createState() => _Introduction1State();
}

class _Introduction1State extends State<Introduction2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 35,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        ),
      ],
    );
  }
}