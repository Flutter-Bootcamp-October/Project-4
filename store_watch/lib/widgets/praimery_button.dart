import 'package:flutter/material.dart';

class PraimeryButton extends StatelessWidget {
  const PraimeryButton(
      {super.key,
      required this.buttonTitle,
      required this.onPressed,
      required this.btnBackgroundColor});
  final String buttonTitle;
  final Function() onPressed;
  final Color btnBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: btnBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonTitle,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
