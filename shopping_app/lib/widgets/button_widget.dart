import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonColor,
    required this.buttonChild,
    required this.onPressed,
    required this.radius,
  });
  final Color buttonColor;
  final Widget buttonChild;
  final Function onPressed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
          width: MediaQuery.of(context).size.width - 43,
          height: 53,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(buttonColor)),
              onPressed: onPressed(),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.black),
              ))),
    );
  }
}
