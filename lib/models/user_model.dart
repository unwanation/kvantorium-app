import 'package:kvantorium/models/course_model.dart';

class UserModel {
  CourseModel course;
  UserModel({required this.course});

  static UserModel getExampleUser() {
    return UserModel(course: CourseModel.getExampleCourses()[0]);
  }
}
