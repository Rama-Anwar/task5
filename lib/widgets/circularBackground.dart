import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Circularbackground extends StatelessWidget {
  Circularbackground({
    super.key,
    required this.icon,
    this.onTap,
    this.iconWidth = 23,
    this.bgWidth = 50,
    this.bgHeight = 50,
    this.hasShadow = false,
  });
  String? icon;
  VoidCallback? onTap;
  double iconWidth;
  double bgWidth;
  double bgHeight;
  bool hasShadow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 0,
                    offset: Offset(2, 2),
                  ),
                ]
              : [],
        ),
        height: bgHeight,
        width: bgWidth,

        child: Center(child: SvgPicture.asset(icon!, width: iconWidth)),
      ),
    );
  }
}
