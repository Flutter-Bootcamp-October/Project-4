import 'package:flutter/material.dart';
import 'package:shopingpriject/screens/home_screen.dart';
import 'package:shopingpriject/screens/nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar()
         
      
    );
  }
}
