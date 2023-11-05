import 'package:flutter/material.dart';

class DescriptionTextScreen extends StatelessWidget {
  const DescriptionTextScreen({super.key, required this.descriptionScreen});

  final String descriptionScreen;

  @override
  Widget build(BuildContext context) {
    return Text(
      descriptionScreen,
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );
  }
}
