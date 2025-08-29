import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchbar extends StatelessWidget {
  Searchbar({required this.controller, required this.onChanged});
  final TextEditingController controller;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        hintText: 'search for subjects ...',
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20),

          child: FaIcon(FontAwesomeIcons.magnifyingGlass),
        ),
        prefixIconColor: Colors.grey,
        prefixIconConstraints: BoxConstraints(minHeight: 8, minWidth: 60),
      ),
    );
  }
}
