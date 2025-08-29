import 'package:flutter/material.dart';
import 'package:task5/models/courseModel.dart';
import 'package:task5/widgets/courseCard.dart';

class CoursesListBuilder extends StatelessWidget {
  CoursesListBuilder({required this.filteredCourses});
  List<CourseModel> filteredCourses;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 5,
        mainAxisExtent: 240,
      ),
      itemCount: filteredCourses.length,
      itemBuilder: (context, Index) {
        final course = filteredCourses[Index];
        return Coursecard(
          courseName: course.title,
          price: course.price,
          image: course.image,
          
        );
      },
    );
  }
}
