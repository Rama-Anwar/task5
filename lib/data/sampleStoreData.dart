import 'package:task5/constants.dart';
import 'package:task5/models/categoriesModel.dart';
import 'package:task5/models/courseModel.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
    category: 'Computer',
    courses: [
      CourseModel(title: 'Logic', price: '1.5', image: kCoverYears),
      CourseModel(title: 'Physics 1', price: '2.00', image: kCoverNote),
      CourseModel(title: 'Modeling', price: '3.25', image: kCoverBook),
      CourseModel(title: 'calculus', price: '3.25', image: kCoverBook),
    ],
  ),

  CategoriesModel(
    category: 'Mechatronics',
    courses: [
      CourseModel(title: 'Logic 2', price: '1.5', image: kCoverYears),
      CourseModel(title: 'Physics 2', price: '2.00', image: kCoverNote),
      CourseModel(title: 'Modeling 2', price: '3.25', image: kCoverBook),
    ],
  ),

  CategoriesModel(
    category: 'Electrical',
    courses: [
      CourseModel(title: 'Logic 3', price: '1.5', image: kCoverYears),
      CourseModel(title: 'Physics 3', price: '2.00', image: kCoverNote),
    ],
  ),

  CategoriesModel(
    category: 'Popular',
    courses: [
      CourseModel(title: 'Logic 4', price: '1.5', image: kCoverYears),
      CourseModel(title: 'Physics 4', price: '2.00', image: kCoverNote),
      CourseModel(title: 'Modeling 4', price: '3.25', image: kCoverBook),
    ],
  ),
];
