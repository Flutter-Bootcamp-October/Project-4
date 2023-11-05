import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 235, top: 15),
      child: Text(
        "Forgot Password?",
        style: TextStyle(color: appColorBlue),
      ),
    );
  }
}
