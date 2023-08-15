///
/// 학교 홍보
///

import 'package:aiia/config.dart';

import 'package:flutter/material.dart';

class Promotion extends StatefulWidget {
  const Promotion({Key? key}) : super(key: key);

  @override
  State<Promotion> createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("준비중", style: ts1));
  }
}
