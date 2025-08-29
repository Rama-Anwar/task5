import 'package:task5/helperFunctions.dart/get_courses_by_category.dart';
import 'package:task5/models/courseModel.dart';

List<CourseModel> get_filtered_courses(String category, String sQuery) {
  List<CourseModel> courses = get_courses_by_category(category);
  if (sQuery.isEmpty) {
    return courses;
  }
  List<CourseModel> filteredCourses = courses.where((course) {
    return course.title.toLowerCase().contains(sQuery.toLowerCase());
  }).toList();
  return filteredCourses;
}
