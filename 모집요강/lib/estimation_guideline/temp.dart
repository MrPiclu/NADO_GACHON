import 'package:aiia/config.dart';
import 'package:aiia/estimation_guideline/est_data.dart';

import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({super.key, required this.name});

  final String name;

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {

  Estimation est = Estimation();
  late List<Widget> ary;

  @override
  void initState() {
    est.setIndex(widget.name);
    ary = est.getAffi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: Container(
        decoration: Background,
        child: SingleChildScrollView(
          child: Column(children: ary)
        ),
      )
    );
  }
}
