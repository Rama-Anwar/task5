import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task5/constants.dart';


class Footer extends StatelessWidget {
  Footer({required this.category});
  String category;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: category == 'Popular'
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(kElecBottom),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(mechBottom),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(kCompBottom),
                ),
              ],
            )
          : Align(
              alignment: Alignment.bottomLeft,
              child: SvgPicture.asset(
                (category == 'Computer')
                    ? kCompBottomLeft
                    : (category == 'Electrical'
                          ? kElecBottomLeft
                          : kMechBottomLeft),
              ),
            ),
    );
  }
}
