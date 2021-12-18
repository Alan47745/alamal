// ignore_for_file: unused_import

import 'package:alamal/view/pages/home.dart';
import 'package:alamal/view/pages/soundCall.dart';
import 'package:alamal/view/pages/writtenAdv.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
