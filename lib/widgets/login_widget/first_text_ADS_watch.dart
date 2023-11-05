import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class FirstTextADSWatch extends StatelessWidget {
  const FirstTextADSWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "ADS Watch",
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "PlayfairDisplay",
          color: appColorBlue),
    );
  }
}
