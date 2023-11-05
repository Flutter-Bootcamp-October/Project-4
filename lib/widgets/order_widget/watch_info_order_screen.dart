import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class WatchInfoOrderScreen extends StatelessWidget {
  const WatchInfoOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: TextStyle(
                fontFamily: "PlayfairDisplay",
                color: appColorBlue,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          height10,
          Text(
            "kjafvblhabvlierfbvlnclewrhvblncvlejwhbvlhclwehbvwehbvwehb",
            style: TextStyle(
                color: appColorGrey, fontWeight: FontWeight.w500, fontSize: 10),
          ),
          height10,
          Text(
            "\$ watch price",
            style: TextStyle(
                fontFamily: "PlayfairDisplay",
                fontWeight: FontWeight.w600,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
