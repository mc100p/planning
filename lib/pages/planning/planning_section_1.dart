import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planning/utils/custom_icons_icons.dart';

class PlanningSection1 extends StatelessWidget {
  const PlanningSection1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.pop(),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withOpacity(0.8),
            ),
            child: Icon(CustomIcons.search),
          ),
        ),
        Spacer(),
        Expanded(
          flex: 5,
          child: Text(
            "Planning",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
