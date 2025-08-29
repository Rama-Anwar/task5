import 'package:flutter/material.dart';
import 'package:task5/data/sampleFavData.dart';
import 'package:task5/helperFunctions.dart/get_category_by_course.dart';
import 'package:task5/models/courseModel.dart';
import 'package:task5/widgets/favoriteCourseCard.dart';

class FavCourseListBuilder extends StatelessWidget {
  FavCourseListBuilder({super.key});
  List<CourseModel> favoriteCourses = [];

  @override
  Widget build(BuildContext context) {
    for (var category in Favorites) {
      for (var course in category.courses) {
        favoriteCourses.add(course);
      }
    }
    return GridView.builder(
      padding: EdgeInsets.only(top: 10),
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 20,
        mainAxisExtent: 240,
      ),
      itemCount: favoriteCourses.length,
      itemBuilder: (context, Index) {
        final course = favoriteCourses[Index];
        return FavoriteCourseCard(
          course: course.title,
          price: course.price,
          image: course.image,
          category: getCategoryByCourse(Favorites, course.title, course.price)!,
        );
      },
    );
  }
}
