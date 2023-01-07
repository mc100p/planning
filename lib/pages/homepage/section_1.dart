import 'package:flutter/material.dart';
import 'package:planning/utils/widgets.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Image(
                  image: AssetImage(
                      'images/Screenshot 2023-01-06 at 8.51.23 PM.png'),
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              SizedBox(width: 30),
              Text(
                "Your Profile",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
