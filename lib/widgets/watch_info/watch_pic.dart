import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class WatchPic extends StatelessWidget {
  const WatchPic({super.key, required this.watch});
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: appColorWhite),
        ),
        Positioned(
          top: 200,
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 1.12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: appColorColdGrey),
          ),
        ),
        Positioned(
          top: 100,
          left: 75,
          child: Center(child: Image.asset(watch.picture)),
        )
      ],
    );
  }
}
