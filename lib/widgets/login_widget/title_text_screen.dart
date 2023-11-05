import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class TitleTextScreen extends StatelessWidget {
  const TitleTextScreen({super.key, required this.titleScreen});

  final String titleScreen;

  @override
  Widget build(BuildContext context) {
    return  Text(titleScreen,
      style: const TextStyle(
        color: appColorBlue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "PlayfairDisplay",
      ),
    );
  }
}
