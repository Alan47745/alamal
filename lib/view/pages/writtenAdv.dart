// ignore_for_file: file_names, avoid_types_as_parameter_names

import 'package:alamal/view/pages/home.dart';
import 'package:alamal/widget/slideBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slidable_button/slidable_button.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:swipe_button_widget/swipe_button_widget.dart';

class WrittenAdvice extends StatefulWidget {
  WrittenAdvice({Key? key}) : super(key: key);

  @override
  _WrittenAdviceState createState() => _WrittenAdviceState();
}

class _WrittenAdviceState extends State<WrittenAdvice> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
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
                            "assets/Group4.png",
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
                                    "استشارة كتابية",
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
                                Image.asset("assets/DDR.png"),
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
                                      "اختر نوع الاستشارة",
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                            childAspectRatio: 3.5,
                          ),
                          itemBuilder: (context, index) => Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
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
                                        onChanged: gridViewData2[index]['func'],
                                        hoverColor: Colors.indigo[900],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15.0,
                                    ),
                                    Text(
                                      "${gridViewData2[index]['title']}",
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500]!,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        print(value.toString());
                      },
                      maxLines: 16,
                      textInputAction: TextInputAction.done,
                      textDirection: TextDirection.rtl,
                      decoration: const InputDecoration(
                        hintText: "اكتب محتوى الاستشارة",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                        hintTextDirection: TextDirection.rtl,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SlidableButton(
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
                            "ارسل",
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
          ],
        ),
      )),
    );
  }
}
