import 'package:flutter/material.dart';
import 'package:wach_store_app/screens/cart_screen.dart';
import 'package:wach_store_app/screens/nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WachNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
