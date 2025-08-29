import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/widgets/circularBackground.dart';
import 'package:task5/widgets/courseImage.dart';

class FavoriteCourseCard extends StatelessWidget {
  FavoriteCourseCard({
    required this.category,
    required this.course,
    required this.price,
    required this.image,
  });
  String category;
  String course;
  String price;
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 185,
          height: 240,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: const Color.fromARGB(
                  255,
                  246,
                  246,
                  246,
                ).withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Courseimage(image: image),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      category,
                      style: TextStyle(
                        color: kTextBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        course,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '$price JOD',
                        style: TextStyle(
                          color: kMint,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 10,
          child: Circularbackground(
            icon: kFilledHeart,
            iconWidth: 17,
            bgHeight: 30,
            bgWidth: 30,
            hasShadow: true,
          ),
        ),
      ],
    );
  }
}
