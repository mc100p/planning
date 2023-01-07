import 'package:flutter/material.dart';

class PlanningSection6 extends StatelessWidget {
  const PlanningSection6({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        children: [
          segments(context, "Jan", 26, "images/planning_office.png", "Office"),
          SizedBox(height: 30),
          segments(context, "Feb", 4, "images/corrider.png", "Corridor"),
        ],
      ),
    );
  }

  Widget segments(BuildContext context, String month, int date, String imgUrl,
      String faculty) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      elevation: date == 26 ? 17 : 0,

      // decoration: BoxDecoration(

      //   color: Colors.white.withOpacity(0.8),
      // ),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  month,
                  style: TextStyle(
                      fontWeight:
                          date == 26 ? FontWeight.bold : FontWeight.w500,
                      fontSize: date == 26 ? 16.0 : 12.0,
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
            SizedBox(width: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imgUrl,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                faculty,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: date == 26 ? FontWeight.w800 : FontWeight.w500),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: date == 26
                      ? Theme.of(context).primaryColor
                      : Color.fromARGB(255, 235, 233, 233),
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(Icons.arrow_forward_ios_rounded, size: 15),
            )
          ],
        ),
      ),
    );
  }
}
