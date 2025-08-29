import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/screens/storePage.dart';
import 'package:task5/widgets/circularBackground.dart';
import 'package:task5/widgets/favCourseListBuilder.dart';


class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});
  static String id = 'FavoritePage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kBackground,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          backgroundColor: kBackground,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Circularbackground(
                  icon: kBackArrow,
                  iconWidth: 15,
                  onTap: () {
                    Navigator.pushNamed(context, Storepage.id);
                  },
                ),
                Spacer(flex: 3),
                Text(
                  'Favourite',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Spacer(flex: 5),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
          child: FavCourseListBuilder(),
        ),
      ),
    );
  }
}
