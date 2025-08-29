
import 'package:task5/models/categoriesModel.dart';

String? getCategoryByCourse(
  List<CategoriesModel> categories,
  String courseName,
  String price,
) {
  for (var category in categories) {
    for (var course in category.courses) {
      if (course.title == courseName && course.price == price) {
        return category.category;
      }
    }
  }
  return null;
}
