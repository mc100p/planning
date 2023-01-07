import 'package:flutter/material.dart';

class PlanningSection5 extends StatelessWidget {
  const PlanningSection5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            fields(context, "Materials", 85.0, "\$1.3k"),
            SizedBox(height: 25),
            fields(context, "Furniture", 160.0, "\$2.4k"),
          ],
        ),
      ),
    );
  }

  Widget fields(
      BuildContext context, String title, double percentage, String amount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Expanded(
              flex: 15,
              child: ProgressBar(
                  current: percentage, color: Theme.of(context).primaryColor),
            ),
            Spacer(),
            Text(
              amount,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double current;
  final Color color;

  const ProgressBar({Key? key, required this.current, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        return Stack(
          children: [
            Container(
              width: x,
              height: 20,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 2, 29, 52),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: current,
              height: 20,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
