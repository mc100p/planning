import 'package:flutter/material.dart';
import 'package:planning/utils/custom_icons_icons.dart';
import 'package:planning/utils/widgets.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          indent(
            Container(
              height: size.height * 0.50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color.fromARGB(255, 238, 236, 236).withOpacity(0.8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(Icons.add, color: Colors.white)),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "New Project",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Archiecture plan \nfor the kitchen",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              CustomIcons.newspaper,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                          "For contemporary design lovers, a Chad residence beach ..."),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 200,
              child: Row(
                children: [
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      section3FloatingContainers(
                          context, "Jan", 14, "Color Selection", "12 items"),
                      SizedBox(width: 20),
                      section3FloatingContainers(
                          context, "Jan", 20, "Color Selection", "13 items"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget section3FloatingContainers(BuildContext context, String date, int day,
      String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 27.0, horizontal: 10),
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: day != 14 ? Border.all(width: 1) : null,
                        borderRadius: BorderRadius.circular(16),
                        color:
                            day == 14 ? Theme.of(context).primaryColor : null),
                    child: Column(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 32, 57),
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        ),
                        SizedBox(height: 5),
                        Text(
                          day.toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 32, 57),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                    ],
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
