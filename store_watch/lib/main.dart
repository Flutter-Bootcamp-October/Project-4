import 'package:flutter/material.dart';
import 'package:store_watch/screens/get_started.dart';
import 'package:store_watch/screens/profile.dart';
import 'package:store_watch/screens/sign_up.dart';
import 'package:store_watch/screens/signin_up.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
