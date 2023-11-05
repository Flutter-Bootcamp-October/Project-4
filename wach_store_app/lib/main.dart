import 'package:flutter/material.dart';
import 'package:wach_store_app/screens/get_started.dart';
import 'package:wach_store_app/screens/my_order_screen.dart';
import 'package:wach_store_app/screens/nav_bar.dart';
import 'package:wach_store_app/screens/signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
