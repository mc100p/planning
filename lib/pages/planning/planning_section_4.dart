import 'package:flutter/material.dart';

class PlanningSection4 extends StatelessWidget {
  const PlanningSection4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 38.0),
      child: Row(
        children: [
          Text(
            "Financial Budget",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                // padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "13%",
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.arrow_upward, size: 23)
                  ],
                ),
              ),
            ),
          ),
          Icon(Icons.more_horiz_outlined)
        ],
      ),
    );
  }
}
