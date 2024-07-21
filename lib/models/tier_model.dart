import 'package:flutter/material.dart';

class TierModel {
  final String name;
  final Color accentColor;
  final Color secondAccentColor;
  final Color backgroundColor;

  const TierModel({
    required this.name,
    required this.accentColor,
    required this.secondAccentColor,
    required this.backgroundColor,
  });

  static List<TierModel> getExampleTiers() {
    List<TierModel> tiers = [];

    tiers.add(
      TierModel(
        name: 'Вводный',
        accentColor: Colors.blue,
        secondAccentColor: Colors.blueAccent,
        backgroundColor: Colors.blue.shade100,
      ),
    );
    tiers.add(
      TierModel(
        name: 'Углубленный',
        accentColor: Colors.orange,
        secondAccentColor: Colors.orangeAccent,
        backgroundColor: Colors.orange.shade100,
      ),
    );
    tiers.add(
      TierModel(
        name: 'Проектный',
        accentColor: Colors.purple,
        secondAccentColor: Colors.purpleAccent,
        backgroundColor: Colors.purple.shade100,
      ),
    );

    return tiers;
  }
}
