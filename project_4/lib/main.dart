import 'package:flutter/material.dart';

import 'package:project_4/screens/NavigationBar/navigation_bar_widget.dart';

import 'package:project_4/place_holder.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // PlaceHolderScreen(),

          BottomNavBar(),
    );
  }
}
