import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class UpdateButtom extends StatelessWidget {
  final VoidCallback onPressed;

  const UpdateButtom({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: InkWell(
          onTap: onPressed, // Call the provided onPressed callback when tapped
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: appColorYellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Update",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
