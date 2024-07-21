import 'package:flutter/material.dart';
import 'package:kvantorium/models/user_model.dart';
import 'package:kvantorium/styles/kvantorium_text_styles.dart';
import 'package:kvantorium/widgets/text_pill.dart';

class CurrentCourse extends StatelessWidget {
  const CurrentCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Текущий курс',
          style: KvantoriumTextStyles.secondary,
        ),
        Text(
          UserModel.getExampleUser().course.name,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextPill(
          '${UserModel.getExampleUser().course.tier.name} модуль',
          color: UserModel.getExampleUser().course.tier.backgroundColor,
        ),
      ],
    );
  }
}
