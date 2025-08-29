import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task5/constants.dart';

class Arrowiconbtn extends StatelessWidget {
  const Arrowiconbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(child: FaIcon(FontAwesomeIcons.arrowRight, size: 13)),
    );
  }
}
