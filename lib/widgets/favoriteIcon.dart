import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task5/constants.dart';
import 'package:task5/helperFunctions.dart/add_to_favorites.dart';
import 'package:task5/helperFunctions.dart/inFavorites.dart';
import 'package:task5/helperFunctions.dart/remove_from_favorites.dart';

class Favoriteicon extends StatefulWidget {
  Favoriteicon({required this.name, required this.price, required this.image});
  String name;
  String price;
  String image;

  @override
  State<Favoriteicon> createState() => _FavoriteiconState();
}

class _FavoriteiconState extends State<Favoriteicon> {
  @override
  Widget build(BuildContext context) {
    String icon = inFavorites(widget.name, widget.price)
        ? kFilledHeart
        : kOutlinedHeart;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (icon == kFilledHeart) {
            icon = kOutlinedHeart;
            removeFromFavorites(widget.name, widget.price, widget.image);
          } else {
            icon = kFilledHeart;
            addToFavorites(widget.name, widget.price, widget.image);
          }
        });
      },
      child: SvgPicture.asset(icon, width: 23),
    );
  }
}
