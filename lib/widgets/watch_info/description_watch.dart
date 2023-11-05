import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class DescriptionWatch extends StatelessWidget {
  const DescriptionWatch({super.key, required this.watch});
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return Text(
      watch.title,
      style: const TextStyle(
          color: appColorGrey, fontWeight: FontWeight.w300, fontSize: 17),
    );
  }
}
