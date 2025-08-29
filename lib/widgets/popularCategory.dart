import 'package:flutter/material.dart';
import 'package:task5/constants.dart';

class PopularCategory extends StatelessWidget {
  PopularCategory({required this.isSelected, required this.onTap});
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
              color: kBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(Icons.star, color: Colors.white, size: 30),
            ),
          ),
          SizedBox(height: 6),
          if (isSelected)
            Text('Popular', style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
