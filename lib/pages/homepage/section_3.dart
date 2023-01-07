import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        child: Container(
          height: 200,
          width: double.infinity,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              facilities('images/office.png', 'Office', context),
              facilities('images/gym.png', "Gym", context),
              facilities('images/office.png', 'Office', context),
              facilities('images/gym.png', "Gym", context),
              facilities('images/office.png', 'Office', context),
              facilities('images/gym.png', "Gym", context),
            ],
          ),
        ),
      ),
    );
  }

  Widget facilities(String imgUrl, String faculty, BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.98), BlendMode.dstATop),
                image: AssetImage(
                  imgUrl,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                faculty,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
