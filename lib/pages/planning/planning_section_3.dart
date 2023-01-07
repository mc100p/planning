import 'package:flutter/material.dart';

class PlanningSection3 extends StatelessWidget {
  const PlanningSection3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        dateFields(context, 20, "Jan"),
        dateFields(context, 26, "Jan"),
        dateFields(context, 2, "Feb"),
        dateFields(context, 8, "Feb"),
      ],
    );
  }

  Widget dateFields(BuildContext context, int date, String day) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: date == 20 ? Theme.of(context).primaryColor : null,
          border: date == 20 ? null : Border.all(width: 1),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Color.fromARGB(255, 4, 51, 89)),
          ),
          SizedBox(height: 8),
          Text(
            date.toString(),
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Color.fromARGB(255, 4, 51, 89)),
          ),
        ],
      ),
    );
  }
}
