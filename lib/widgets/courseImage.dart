import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Courseimage extends StatelessWidget {
  Courseimage({required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SvgPicture.asset(image, width: 150, fit: BoxFit.cover),
      ),
    );
  }
}
