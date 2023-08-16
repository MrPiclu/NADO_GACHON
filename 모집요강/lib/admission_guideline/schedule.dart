///
/// 전형 일정
/// - Custom 달력
/// - 선택한 날짜의 이벤트 List
///

import 'package:aiia/config.dart';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _Schedule1State();
}

class _Schedule1State extends State<Schedule> {
  DateTime _selectedDay = Today!;
  DateTime _focusedDay = Today!;

  static Map<DateTime, String> all_evnets = {
    DateTime(2023, 9, 11): "/원서접수",
    DateTime(2023, 9, 16): "/서류제출마감",
    DateTime(2023, 11, 11): "논술/고시장 발표",
    DateTime(2023, 11, 27): "논술/인문계열, 컴퓨터공학전공, 간호학과 시험",
    DateTime(2023, 11, 28): "논술/자연계열 시험",
    DateTime(2023, 10, 5): "지역균형/1단계 결과 발표",
    DateTime(2023, 10, 7): "지역균형/면접 시작",
    DateTime(2023, 10, 9): "지역균형/면접 끝",
    DateTime(2023, 12, 4): "가천의약학/1단계 결과 발표",
    DateTime(2023, 12, 8): "가천의약학/의예과 면접",
    DateTime(2023, 12, 7): "가천의약학/한의예과, 약학과 면접",
    DateTime(2023, 10, 26): "가천바람개비/1단계 결과 발표",
    DateTime(2023, 10, 28): "가천바람개비/인문계열, 경영학부, 금융수학전공, 빅데이터경영전공, 간호학과 면접 시작",
    DateTime(2023, 10, 29): "가천바람개비/인문계열, 경영학부, 금융수학전공, 빅데이터경영전공, 간호학과 면접 끝",
    DateTime(2023, 11, 4): "가천바람개비/자연계열, 경영학부, 간호학과 면접 시작",
    DateTime(2023, 11, 5): "가천바람개비/자연계열, 경영학부, 간호학과 면접 끝",
    DateTime(2023, 10, 26): "가천 AIㆍSW/1단계 결과 발표",
    DateTime(2023, 10, 28): "가천 AIㆍSW/면접 시작",
    DateTime(2023, 10, 29): "가천 AIㆍSW/면접 끝",
    DateTime(2023, 10, 12): "기회균형/1단계 결과 발표",
    DateTime(2023, 10, 14): "기회균형/면접 시작",
    DateTime(2023, 10, 15): "기회균형/면접 끝",
    DateTime(2023, 10, 12): "농어촌(종합)/1단계 결과 발표",
    DateTime(2023, 10, 14): "농어촌(종합)/면접 시작",
    DateTime(2023, 10, 15): "농어촌(종합)/면접 끝",
    DateTime(2023, 10, 12): "특성화고교/1단계 결과 발표",
    DateTime(2023, 10, 14): "특성화고교/면접 시작",
    DateTime(2023, 10, 15): "특성화고교/면접 끝",
    DateTime(2023, 12, 4): "교육기회균형/1단계 결과 발표",
    DateTime(2023, 12, 7): "교육기회균형/면접",
    DateTime(2023, 10, 19): "조기취업형/1단계 결과 발표",
    DateTime(2023, 10, 25): "조기취업형/면접 시작",
    DateTime(2023, 10, 26): "조기취업형/면접 끝",
    DateTime(2023, 10, 12): "실기(연기예술학과)/1단계 결과 발표",
    DateTime(2023, 10, 14): "실기(연기예술학과)/실기 시작",
    DateTime(2023, 10, 15): "실기(연기예술학과)/실기 끝",
    DateTime(2023, 9, 20): "실기(체육전공)/고시장 발표",
    DateTime(2023, 9, 23): "실기(체육전공)/실기 시작",
    DateTime(2023, 9, 24): "실기(체육전공)/실기 끝",
    DateTime(2023, 9, 20): "실기(태권도)/고시장 발표",
    DateTime(2023, 10, 2): "실기(태권도)/실기 시작",
    DateTime(2023, 10, 3): "실기(태권도)/실기 끝",
    DateTime(2023, 9, 20): "실기(음악학부)/고시장 발표",
    DateTime(2023, 9, 23): "실기(음악학부)/실기 시작",
    DateTime(2023, 10, 9): "실기(음악학부)/실기 끝",
    DateTime(2023, 9, 20): "실기(미술ㆍ디자인학부)/고시장 발표",
    DateTime(2023, 10, 21): "실기(미술ㆍ디자인학부)/실기 시작",
    DateTime(2023, 10, 22): "실기(미술ㆍ디자인학부)/실기 끝",
    DateTime(2023, 11, 11): "/합격자 발표 (수능 전)",
    DateTime(2023, 12, 14): "/합격자 발표 (수능 후)",
    DateTime(2023, 12, 18): "/최초합격자 문서등록 시작",
    DateTime(2023, 12, 21): "/최초합격자 문서등록 끝",
    DateTime(2023, 12, 22): "/충원합격자 발표 및 문서등록 시작",
    DateTime(2023, 12, 29): "/충원합격자 발표 및 문서등록 끝",
    DateTime(2024, 2, 5): "/최종등록금 납부 시작",
    DateTime(2024, 2, 7): "/최종등록금 납부 끝",
  };
  late List<Widget> daily_events = [];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      /* 날짜 변경 */
      GestureDetector(
        onTap: () {},
        onHorizontalDragEnd: (dragDetail) {
          // Right
          if (dragDetail.velocity.pixelsPerSecond.dx < 1) {
            if (_focusedDay.month < 12) {
              DateTime next = (_focusedDay.month + 1 == Today!.month)
                  ? Today!
                  : DateTime(2023, _focusedDay.month + 1, 1);
              setState(() => _focusedDay = next);
            }
          }
          // Left
          else if (dragDetail.velocity.pixelsPerSecond.dx > 1) {
            late DateTime next;
            if (_focusedDay.month > 1)
              next = (_focusedDay.month - 1 == Today!.month)
                  ? Today!
                  : DateTime(2023, _focusedDay.month - 1, 1);
            setState(() => _focusedDay = next);
          }
        },
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          GestureDetector(
            onTap: () {
              late DateTime next;
              if (_focusedDay.month > 1)
                next = (_focusedDay.month - 1 == Today!.month)
                    ? Today!
                    : DateTime(2023, _focusedDay.month - 1, 1);
              setState(() => _focusedDay = next);
            },
            child:
                Text("◀", style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
          SizedBox(width: 20),
          Text(_focusedDay.year.toString() + '.' + _focusedDay.month.toString(),
              style: TextStyle(fontSize: 20, color: Colors.white)),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              late DateTime next;
              if (_focusedDay.month < 12)
                next = (_focusedDay.month + 1 == Today!.month)
                    ? Today!
                    : DateTime(2023, _focusedDay.month + 1, 1);
              setState(() => _focusedDay = next);
            },
            child:
                Text("▶", style: TextStyle(fontSize: 40, color: Colors.white)),
          )
        ]),
      ),
      /* 달력 */
      Container(
          width: 330,
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
              child: TableCalendar(
                  focusedDay: _focusedDay,
                  firstDay: DateTime(2023, 3, 1),
                  lastDay: DateTime(2024, 2, 29),
                  daysOfWeekHeight: 40,
                  headerVisible: false,
                  locale: "ko-KR",
                  calendarFormat: CalendarFormat.month,
                  // 월로 표시
                  holidayPredicate: (day) => day.weekday > 6,
                  // 일요일 = 휴일
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                      daily_events = setEvent();
                    });
                  },
                  onPageChanged: (day) => setState(() => _focusedDay = day),
                  // 날마다 있는 이벤트
                  eventLoader: (day) {
                    List<bool> ret = [];
                    all_evnets.forEach((key, value) {
                      if (isSameDay(key, day)) ret.add(false);
                    });
                    return ret;
                  },
                  // 스타일 - 글자 & 데코
                  calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                      // 그 달의 날짜만 표시
                      outsideTextStyle: TextStyle(color: Colors.black),
                      outsideDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      defaultTextStyle: TextStyle(color: Colors.black),
                      defaultDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      todayTextStyle: TextStyle(color: Colors.black),
                      todayDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      weekendTextStyle: TextStyle(color: Colors.black),
                      weekendDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      holidayTextStyle: TextStyle(color: Colors.red),
                      holidayDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      selectedTextStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      selectedDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10))),
                  calendarBuilders: CalendarBuilders(
                      // 일요일은 빨간색으로
                      dowBuilder: (ctx, day) {
                    if (day.weekday == DateTime.sunday)
                      return Center(
                          child: Text(DateFormat.E("ko-KR").format(day),
                              style: TextStyle(color: Colors.red)));
                  },
                      // 이벤트 표시하는 마커
                      markerBuilder: (ctx, day, arr) {
                    if (arr.length != 0)
                      return Container(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 15,
                              height: 15,
                              margin: EdgeInsets.only(right: 2, bottom: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Color(0xFF2991FF),
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: Text(arr.length.toString(),
                                  style: TextStyle(color: Colors.white))));
                    else
                      return null;
                  })))),
      /* 이벤트 */
      SingleChildScrollView(
        child: Column(children: daily_events)
      )
    ]);
  }

  /* 선택한 날짜에 있는 이벤트를 표시하기 위한 함수 */
  List<Widget> setEvent() {
    List<String> events = [];
    all_evnets.forEach((key, value) {
      if (isSameDay(_selectedDay, key)) events.add(value);
    });

    List<Widget> ret = [];
    events.forEach((String e)  {
      List<String> temp = e.split('/');
      ret.add(Container(
          height: 100,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.topLeft,
              child: Text(temp[0], style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold))
            ),
            Container(
              margin: EdgeInsets.only(bottom: (temp[0].length == 0) ? 0 : 30),
              alignment: (temp[0].length == 0) ? Alignment.center : Alignment.bottomCenter,
              child: Text(temp[1], style: TextStyle(
                color: Colors.black, fontSize: 24))
            )
          ])
      ));
    });
    return ret;
  }
}
