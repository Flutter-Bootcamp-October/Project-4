import 'package:flutter/material.dart';
import 'package:shopingpriject/screens/filter_screen.dart';
import 'package:shopingpriject/screens/nav_bar.dart';
import 'package:shopingpriject/screens/signup_Screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: NavBar()
         
      

    );
  }
}
