///
/// 전형 일정
///

import 'package:aiia/config.dart';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule1 extends StatefulWidget {
  const Schedule1({Key? key}) : super(key: key);

  @override
  State<Schedule1> createState() => _Schedule1State();
}

class _Schedule1State extends State<Schedule1> {
  DateTime _selectedDay = Today!;
  DateTime _focusedDay = Today!;

  CalendarFormat _format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* 날짜 변경 */
        Row(mainAxisSize: MainAxisSize.min, children: [
          GestureDetector(
            onTap: () {
              late DateTime next;
              if (_format == CalendarFormat.month) {
                if (_focusedDay.month > 1)
                  next = (_focusedDay.month - 1 == Today!.month)
                      ? Today!
                      : DateTime(2023, _focusedDay.month-1, 1);
              }
              else {
                if (_focusedDay.month > 1 || _focusedDay.day > 1)
                  next = (_focusedDay.month == Today!.month
                      && _focusedDay.day-7 == Today!.day)
                      ? Today!
                      : DateTime(2023, _focusedDay.month, _focusedDay.day-7);
              }
              setState(() => _focusedDay = next);
            },
            child:
                Text("◀", style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
          SizedBox(width: 20),
          AnimatedContainer(
              duration: Duration(seconds: 1),
              child: GestureDetector(
                  onHorizontalDragEnd: (dragDetail) {
                    // Right
                    if (dragDetail.velocity.pixelsPerSecond.dx < 1) {
                      late DateTime next;
                      if (_format == CalendarFormat.month) {
                        if (_focusedDay.month < 12)
                          next = (_focusedDay.month + 1 == Today!.month)
                              ? Today!
                              : DateTime(2023, _focusedDay.month+1, 1);
                      }
                      else {
                        if (_focusedDay.month < 12 || _focusedDay.day < 31)
                          next = (_focusedDay.month == Today!.month
                              && _focusedDay.day+7 == Today!.day)
                              ? Today!
                              : DateTime(2023, _focusedDay.month, _focusedDay.day+7);
                      }
                      setState(() => _focusedDay = next);
                    }
                    // Left
                    else if (dragDetail.velocity.pixelsPerSecond.dx > 1) {
                      late DateTime next;
                      if (_format == CalendarFormat.month) {
                        if (_focusedDay.month > 1)
                          next = (_focusedDay.month - 1 == Today!.month)
                              ? Today!
                              : DateTime(2023, _focusedDay.month-1, 1);
                      }
                      else {
                        if (_focusedDay.month > 1 || _focusedDay.day > 1)
                          next = (_focusedDay.month == Today!.month
                              && _focusedDay.day-7 == Today!.day)
                              ? Today!
                              : DateTime(2023, _focusedDay.month, _focusedDay.day-7);
                      }
                      setState(() => _focusedDay = next);
                    }
                  },
                  child: Text(_focusedDay.year.toString() + '.' + _focusedDay.month.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white)))),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              late DateTime next;
              if (_format == CalendarFormat.month) {
                if (_focusedDay.month < 12)
                  next = (_focusedDay.month + 1 == Today!.month)
                      ? Today!
                      : DateTime(2023, _focusedDay.month+1, 1);
              }
              else {
                if (_focusedDay.month < 12 || _focusedDay.day < 31)
                  next = (_focusedDay.month == Today!.month
                      && _focusedDay.day+7 == Today!.day)
                      ? Today!
                      : DateTime(2023, _focusedDay.month, _focusedDay.day+7);
              }
              setState(() => _focusedDay = next);
            },
            child:
                Text("▶", style: TextStyle(fontSize: 40, color: Colors.white)),
          )
        ]),
        /* 달력 */
        Container(
            width: 330,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
                child: TableCalendar(
                    focusedDay: _focusedDay,
                    firstDay: DateTime(2023, 1, 1),
                    lastDay: DateTime(2023, 12, 31),
                    daysOfWeekHeight: 40,
                    headerVisible: false,
                    locale: "ko-KR",
                    calendarFormat: _format,
                    availableCalendarFormats: {
                      CalendarFormat.month: 'Month',
                      CalendarFormat.week: 'Week',
                    },
                    holidayPredicate: (day) => day.weekday > 6,
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
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
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        selectedDecoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10))
                    ),
                    calendarBuilders: CalendarBuilders(
                        dowBuilder: (ctx, day) {
                          if (day.weekday == DateTime.sunday) {
                            return Center(
                                child: Text(DateFormat.E("ko-KR").format(day),
                                    style: TextStyle(color: Colors.red)));
                          }
                        }
                    )))
        ),
        /* 이벤트 */
      ],
    );
  }
}
