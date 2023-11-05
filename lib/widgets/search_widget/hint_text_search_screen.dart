import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class HintTextSearchscreen extends StatelessWidget {
  const HintTextSearchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 200),
      child: Center(
          child: Text(
        "Search by name of the watch",
        style: TextStyle(
            color: appColorGrey, fontSize: 18, fontWeight: FontWeight.w300),
      )),
    );
  }
}
