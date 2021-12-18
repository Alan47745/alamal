// ignore_for_file: file_names

import 'package:flutter/material.dart';

double translateX = 0.0;
double translateY = 0.0;
double myWidth = 0;

Widget paymentSuccessful() => Transform.translate(
      offset: Offset(translateX, translateY),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
        width: 170.0,
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.00),
          color: Colors.blue,
        ),
        child: const Icon(
          Icons.navigate_next,
          color: Colors.white,
          size: 50.00,
        ),
      ),
    );

 

/* Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.00),
              color: Colors.blue[50]),
          width: MediaQuery.of(context).size.width - 100,
          height: 100,
          child: GestureDetector(
            onHorizontalDragUpdate: (event) async {
              if (event.primaryDelta! > 10) {
                _incTansXVal();
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                paymentSuccessful(),
                myWidth == 0.0
                    ? Expanded(
                        child: Center(
                          child: Text(
                            "Swipe to make payment",
                            style:
                                TextStyle(color: Colors.blue, fontSize: 20.00),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      */