import 'package:task5/data/sampleStoreData.dart';
import 'package:task5/models/categoriesModel.dart';
import 'package:task5/models/courseModel.dart';

List<CourseModel> get_courses_by_category(String selectedCategory) {
  CategoriesModel? categoryObj = categories.firstWhere(
    (cat) => cat.category == selectedCategory,
  );
  List<CourseModel> selectedCourses = categoryObj.courses;
  return selectedCourses;
}
