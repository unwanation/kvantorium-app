import 'package:flutter/material.dart';
import 'package:kvantorium/models/user_model.dart';

class ActiveLesson extends StatelessWidget {
  const ActiveLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/lesson');
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: UserModel.getExampleUser()
                  .course
                  .tier
                  .accentColor
                  .withOpacity(0.3),
              blurRadius: 24,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              UserModel.getExampleUser().course.lessons.last.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Урок ${UserModel.getExampleUser().course.lessons.length}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
