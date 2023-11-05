import 'package:flutter/material.dart';

class MemberCheck extends StatelessWidget {
  MemberCheck({super.key, required this.leftText, required this.rightText});
  String leftText;
  String rightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          rightText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Color(0xff2c456e),
          ),
        ),
      ],
    );
  }
}
