import 'package:task5/data/sampleFavData.dart';

bool inFavorites(String name, String price) {
  for (var cat in Favorites) {
    for (var course in cat.courses) {
      if (course.title == name && course.price == price) {
        return true;
      }
    }
  }
  return false;
}
