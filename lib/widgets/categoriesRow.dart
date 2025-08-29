import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/widgets/category.dart';
import 'package:task5/widgets/popularCategory.dart';

class CategoriesRow extends StatelessWidget {
  CategoriesRow({required this.selectedCategory, required this.onCategoryTap});
  String selectedCategory;
  final void Function(String name) onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PopularCategory(
          isSelected: selectedCategory == 'Popular',
          onTap: () => onCategoryTap('Popular'),
        ),
        Category(
          icon: kElectricalLogo,
          name: 'Electrical',
          color: kBlue,
          isSelected: selectedCategory == 'Electrical',
          onTap: () => onCategoryTap('Electrical'),
        ),
        Category(
          icon: kMechatronicsLogo,
          name: 'Mechatronics',
          color: kMint,
          isSelected: selectedCategory == 'Mechatronics',
          onTap: () => onCategoryTap('Mechatronics'),
        ),
        Category(
          icon: kComputerLogo,
          name: 'Computer',
          color: kBlue,
          isSelected: selectedCategory == 'Computer',
          onTap: () => onCategoryTap('Computer'),
        ),
      ],
    );
  }
}
