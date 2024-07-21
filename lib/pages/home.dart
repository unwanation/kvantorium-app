import 'package:flutter/material.dart';
import 'package:kvantorium/widgets/active_lesson.dart';
import 'package:kvantorium/widgets/current_course.dart';
import 'package:kvantorium/widgets/kvantorium_app_bar.dart';
import 'package:kvantorium/widgets/previous_lessons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KvantoriumAppBar(),
      // bottomNavigationBar: KvantoriumBottomNavigationBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrentCourse(),
            SizedBox(height: 25),
            ActiveLesson(),
            SizedBox(height: 25),
            PreviousLessons(),
          ],
        ),
      ),
    );
  }
}
