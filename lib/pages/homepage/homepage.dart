import 'package:flutter/material.dart';
import 'package:planning/pages/homepage/section_1.dart';
import 'package:planning/pages/homepage/section_2.dart';
import 'package:planning/pages/homepage/section_3.dart';
import 'package:planning/pages/homepage/section_4.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Section1(),
          Section2(),
          Section3(),
          Section4(),
        ],
      ),
    );
  }
}
