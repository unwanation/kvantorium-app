import 'package:kvantorium/models/lesson_model.dart';
import 'package:kvantorium/models/tier_model.dart';

class CourseModel {
  final String name;
  final List<LessonModel> lessons;
  final TierModel tier;

  const CourseModel({
    required this.name,
    required this.lessons,
    required this.tier,
  });

  static List<CourseModel> getExampleCourses() {
    List<CourseModel> courses = [];

    courses.add(
      CourseModel(
        name: 'Мобильная разработка',
        lessons: const [
          LessonModel(title: 'Введение', url: 'https://flutter.dev'),
          LessonModel(title: 'Язык Dart', url: 'https://flutter.dev'),
          LessonModel(title: 'Операторы', url: 'https://flutter.dev'),
        ],
        tier: TierModel.getExampleTiers()[0],
      ),
    );
    courses.add(
      CourseModel(
        name: 'Мобильная разработка',
        lessons: const [
          LessonModel(title: 'Введение во Flutter', url: 'https://flutter.dev'),
          LessonModel(
              title: 'Stateless и Stateful', url: 'https://flutter.dev'),
          LessonModel(title: 'Null Safety', url: 'https://flutter.dev'),
        ],
        tier: TierModel.getExampleTiers()[1],
      ),
    );
    courses.add(
      CourseModel(
        name: 'Мобильная разработка',
        lessons: const [
          LessonModel(
              title: 'Разработка приложения', url: 'https://flutter.dev'),
          LessonModel(title: 'Поиск работы', url: 'https://flutter.dev'),
          LessonModel(
              title: 'Написание нового фреймворка', url: 'https://flutter.dev'),
        ],
        tier: TierModel.getExampleTiers()[2],
      ),
    );

    return courses;
  }
}
