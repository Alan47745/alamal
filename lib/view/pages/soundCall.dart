// ignore_for_file: file_names, avoid_types_as_parameter_names

import 'package:alamal/view/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';
import 'package:table_calendar/table_calendar.dart';

class SoundCall extends StatefulWidget {
  SoundCall({Key? key}) : super(key: key);

  @override
  _SoundCallState createState() => _SoundCallState();
}

class _SoundCallState extends State<SoundCall> {
  List gridViewData2 = [
    {
      'img': "assets/tawasol.png",
      'title': "زوجية",
      'func': (bool) {},
    },
    {
      'img': "assets/fekry.png",
      'title': "تحرشات",
      'func': (bool) {
        print('Pressed2');
      },
    },
    {
      'img': "assets/karma.png",
      'title': "الخيانة",
      'func': (bool) {
        print('Pressed3');
      },
    },
    {
      'img': "assets/aktbar.png",
      'title': "انحراف",
      'func': (bool) {
        print('Pressed4');
      },
    }
  ];

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height) / 3.4,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3.4,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            "assets/Group5.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                top: 30.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (Route<dynamic> route) => false,
                                      );
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                  Text(
                                    "مكالمة صوتية",
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                      fontSize: 27.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.notifications,
                                      color: Colors.indigo[900],
                                      size: 30.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset("assets/callsound.png"),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "اختر",
                                          style: TextStyle(
                                            color: Colors.indigo[900],
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 30.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "اختر اليوم المناسب",
                                      style: TextStyle(
                                        color: Colors.indigo[900],
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                left: 25.0,
                right: 25.0,
              ),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "اختر اليوم",
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18.0,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.indigo[900],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: TableCalendar(
                        focusedDay: DateTime.now(),
                        firstDay: DateTime.now(),
                        lastDay: DateTime.utc(2024, 1, 1),
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                            });
                          }
                        },
                        onFormatChanged: (format) {
                          if (_calendarFormat != format) {
                            setState(() {
                              _calendarFormat = format;
                            });
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                        calendarFormat: _calendarFormat,
                        calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                            defaultTextStyle: TextStyle(
                              color: Colors.indigo[900]!,
                            ),
                            holidayTextStyle: TextStyle(
                              color: Colors.indigo[900]!,
                            ),
                            outsideTextStyle: TextStyle(
                              color: Colors.indigo[900]!,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Colors.red[400],
                              shape: BoxShape.circle,
                            )),
                        headerStyle: HeaderStyle(
                          titleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.indigo[900],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Colors.indigo[900]!,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Checkbox(
                                    checkColor: Colors.indigo[900],
                                    fillColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    overlayColor: MaterialStateProperty.all(
                                      Colors.indigo[500],
                                    ),
                                    focusColor: Colors.indigo[900],
                                    value: true,
                                    onChanged: (bool) {},
                                    hoverColor: Colors.indigo[900],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  "استشارة",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigo[900]!,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 150.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Colors.indigo[900]!,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Checkbox(
                                    checkColor: Colors.indigo[900],
                                    fillColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    overlayColor: MaterialStateProperty.all(
                                      Colors.indigo[500],
                                    ),
                                    focusColor: Colors.indigo[900],
                                    value: true,
                                    onChanged: (bool) {},
                                    hoverColor: Colors.indigo[900],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  "متابعة",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigo[900]!,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    SlidableButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "250 SR",
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      onChanged: (slide) {
                        print("SENDED");
                      },
                      color: Colors.amber[200],
                      buttonColor: Colors.indigo[600],
                      width: (MediaQuery.of(context).size.width) * (3 / 4),
                      height: 65.0,
                      buttonWidth: 200.0,
                      label: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "احجز الآن",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.double_arrow,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
    ;
  }
}
