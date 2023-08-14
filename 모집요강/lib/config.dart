import 'package:flutter/material.dart';

///
/// 색깔
///
BoxDecoration Background = new BoxDecoration(
    gradient: LinearGradient(colors: [
      Colors.indigo.shade700,
      Colors.blue.shade700,
      Colors.blue,
      Colors.lightBlue.shade400
    ], begin: Alignment.topLeft, end: Alignment.bottomRight));
Color table_label = const Color(0xFF70D4FF);


///
/// 텍스트 스타일
///
TextStyle ts1 = const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold);
TextStyle ts2 = const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400);
TextStyle ts3 = const TextStyle(fontSize: 16, color: Colors.white, height: 1.6);
TextStyle ts4 = const TextStyle(fontSize: 16, color: Colors.black87);
TextStyle ts5 = const TextStyle(fontSize: 16, color: Colors.black87);



///
/// 날짜
///
DateTime ?Today;
String YYYYMM = Today!.year.toString() + '.' + Today!.month.toString();