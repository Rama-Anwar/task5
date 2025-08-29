
import 'package:flutter/material.dart';
import 'package:task5/constants.dart';
import 'package:task5/helperFunctions.dart/get_filtered_courses.dart';
import 'package:task5/models/courseModel.dart';
import 'package:task5/widgets/categoriesRow.dart';
import 'package:task5/widgets/coursesListBuilder.dart';
import 'package:task5/widgets/footer.dart';
import 'package:task5/widgets/header.dart';
import 'package:task5/widgets/searchBar.dart';

class Storepage extends StatefulWidget {
  Storepage({super.key});
  static String id = 'storePage';
  @override
  State<Storepage> createState() => _StorepageState();
}

class _StorepageState extends State<Storepage> {
  String selectedCategory = 'Computer';
  String searchQuery = '';
  TextEditingController searchController = TextEditingController();
  void onSearchChanged(String query) {
    setState(() {
      searchQuery = query;
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<CourseModel> filteredCourses = get_filtered_courses(
      selectedCategory,
      searchQuery,
    );
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Header(title: 'Store'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                SizedBox(height: 15),
                Searchbar(
                  controller: searchController,
                  onChanged: onSearchChanged,
                ),
                SizedBox(height: 17),
                CategoriesRow(
                  selectedCategory: selectedCategory,
                  onCategoryTap: (name) {
                    setState(() => selectedCategory = name);
                  },
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Footer(category: selectedCategory),
                filteredCourses.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27),
                        child: CoursesListBuilder(
                          filteredCourses: filteredCourses,
                        ),
                      )
                    : Center(
                        child: Text(
                          'No courses found',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
