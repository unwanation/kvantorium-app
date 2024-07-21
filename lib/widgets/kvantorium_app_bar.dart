import 'package:flutter/material.dart';
import 'package:kvantorium/models/user_model.dart';
import 'package:kvantorium/styles/kvantorium_text_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class KvantoriumAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KvantoriumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: GradientText(
          'Кванториум',
          style: KvantoriumTextStyles.title,
          colors: [
            UserModel.getExampleUser().course.tier.secondAccentColor,
            UserModel.getExampleUser().course.tier.accentColor
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
