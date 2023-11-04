import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "Filter",
          actionIcon: Icons.close_rounded),
    );
  }
}
