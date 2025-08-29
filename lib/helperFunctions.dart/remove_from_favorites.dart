import 'package:task5/data/sampleFavData.dart';
import 'package:task5/data/sampleStoreData.dart';
import 'package:task5/helperFunctions.dart/get_category_by_course.dart';
import 'package:task5/models/categoriesModel.dart';
import 'package:task5/models/courseModel.dart';

void removeFromFavorites(String courseName, String price, String image) {
  String? category = getCategoryByCourse(categories, courseName, price);
  for (var cat in Favorites) {
    if (cat.category == category) {
      cat.courses.removeWhere(
        (course) =>
            course.title == courseName &&
            course.price == price &&
            course.image == image,
      );
    }
  }
}
