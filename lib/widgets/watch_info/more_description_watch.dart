import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class MoreDescriptionWatch extends StatelessWidget {
  const MoreDescriptionWatch({
    super.key,
    required this.watch,
  });
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "More description",
          style: TextStyle(
              fontFamily: "PlayfairDisplay",
              color: appColorBlue,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
        height10,
        Text(
          "View all",
          style: TextStyle(
              fontFamily: "PlayfairDisplay",
              fontWeight: FontWeight.w500,
              color: appColorGrey,
              fontSize: 15),
        )
      ],
    );
  }
}
