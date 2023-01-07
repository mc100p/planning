import 'package:flutter/material.dart';
import 'package:planning/utils/custom_icons_icons.dart';

class PlanningSection2 extends StatelessWidget {
  const PlanningSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Meeting with a designer",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(CustomIcons.calendar)),
        ],
      ),
    );
  }
}
