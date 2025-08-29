import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/screens/favoritesPage.dart';
import 'package:task5/widgets/circularBackground.dart';

class Header extends StatelessWidget {
  Header({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Circularbackground(icon: kBackArrow, iconWidth: 15),
        Spacer(flex: 1),
        Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
        Spacer(flex: 1),
        Circularbackground(icon: kCart),
        SizedBox(width: 10),
        Circularbackground(
          icon: kOutlinedHeart,
          onTap: () {
            Navigator.pushNamed(context, FavoritesPage.id);
          },
        ),
      ],
    );
  }
}
