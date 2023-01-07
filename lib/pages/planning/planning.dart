import 'package:flutter/material.dart';
import 'package:planning/pages/planning/planning_section_1.dart';
import 'package:planning/pages/planning/planning_section_2.dart';
import 'package:planning/pages/planning/planning_section_3.dart';
import 'package:planning/pages/planning/planning_section_4.dart';
import 'package:planning/pages/planning/planning_section_5.dart';
import 'package:planning/pages/planning/planning_section_6.dart';

class Planning extends StatelessWidget {
  const Planning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 234),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 70.0),
          child: Column(
            children: [
              PlanningSection1(),
              PlanningSection2(),
              PlanningSection3(),
              PlanningSection4(),
              PlanningSection5(),
              PlanningSection6(),
            ],
          ),
        ),
      ),
    );
  }
}
