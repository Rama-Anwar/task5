import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Category extends StatelessWidget {
  Category({
    required this.icon,
    required this.name,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });
  String icon;
  String name;
  Color color;
  bool isSelected;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(bottom: isSelected ? 5 : 0),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isSelected ? color : Colors.white,
            ),
            child: SvgPicture.asset(
              icon,
              width: 40,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : color,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(height: 6),
          if (isSelected)
            Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
