import 'package:flutter/material.dart';
<<<<<<< HEAD
//import 'package:shopingpriject/screens/filter_screen.dart';
//import 'package:shopingpriject/screens/search_screen.dart';
import 'package:shopingpriject/screens/welcome_screen.dart';
//import 'package:shopingpriject/screens/profile_screen.dart';
=======
>>>>>>> af75baf704b8ba4de0f3beff0787746675d94997


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
=======

    return const MaterialApp(
      home: NavBar()
         
      

>>>>>>> af75baf704b8ba4de0f3beff0787746675d94997
    );
  }
}
