import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/widgets/arrowIconBtn.dart';
import 'package:task5/widgets/courseImage.dart';
import 'package:task5/widgets/favoriteIcon.dart';

class Coursecard extends StatelessWidget {
  Coursecard({
    required this.courseName,
    required this.price,
    required this.image,
  });
  String courseName;
  String price;
  String image;
  String icon = kOutlinedHeart;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 190,
          height: 220,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        courseName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      Favoriteicon(
                        name: courseName,
                        price: price,
                        image: image,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price JOD',
                        style: TextStyle(
                          color: kMint,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Arrowiconbtn(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(right: 10, bottom: 107, child: Courseimage(image: image)),
      ],
    );
  }
}
