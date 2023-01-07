import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planning/utils/magic_string.dart';
import 'package:planning/utils/widgets.dart';

class Section2 extends StatelessWidget {
  const Section2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      sliver: SliverToBoxAdapter(
        child: indent(
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Work Process",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () => context.pushNamed(RouteNames.planning),
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
