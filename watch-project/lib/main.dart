import 'package:bootcamp_project_4/globals.dart';
import 'package:bootcamp_project_4/screens/checkout_screen.dart';
import 'package:bootcamp_project_4/screens/home_screen.dart';
import 'package:bootcamp_project_4/screens/signin_screen.dart';
import 'package:bootcamp_project_4/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}
