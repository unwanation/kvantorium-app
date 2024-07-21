import 'package:flutter/material.dart';
import 'package:kvantorium/models/user_model.dart';
import 'package:kvantorium/widgets/previous_lesson.dart';

class PreviousLessons extends StatelessWidget {
  const PreviousLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          decoration: const BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: ListView.separated(
            itemCount: UserModel.getExampleUser().course.lessons.length - 1,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => PreviousLesson(
              name: UserModel.getExampleUser().course.lessons[index].title,
              number: index + 1,
            ),
          ),
        ),
      ),
    );
  }
}
