import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({
    super.key,
    required this.textButtom,
    required this.onPressed,
  });

  final String textButtom;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Center(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
              color: appColorYellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              textButtom,
              style: const TextStyle(fontSize: 15, color: appColorBlue),
            )),
          ),
        ),
      ),
    );
  }
}
