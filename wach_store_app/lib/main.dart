import 'package:flutter/material.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/screens/cart_screen.dart';
import 'package:wach_store_app/screens/products_details.dart';
import 'package:wach_store_app/screens/profile_screen.dart';
import 'package:wach_store_app/screens/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileScreen());
  }
}
