import 'package:flutter/material.dart';
import 'package:task5/screens/favoritesPage.dart';
import 'package:task5/screens/storePage.dart';

void main() {
  runApp(const task5());
}

class task5 extends StatelessWidget {
  const task5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Storepage.id: (context) => Storepage(),
        FavoritesPage.id: (context) => FavoritesPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Storepage.id,
    );
  }
}
