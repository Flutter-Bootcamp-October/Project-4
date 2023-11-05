import 'package:flutter/material.dart';

class BackgroundPic extends StatelessWidget {
  const BackgroundPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 220,
      bottom: 250,
      child: SizedBox(
        height: 450,
        width: 250,
        child: Image.asset(
          "assets/watch1.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
