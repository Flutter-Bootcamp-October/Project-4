import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class PicWatchOrderScreen extends StatelessWidget {
  const PicWatchOrderScreen({super.key, required this.product});
  final Watch product; // The product to add to the cart

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: appColorWhite),
        ),
        Positioned(
          top: 50,
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appColorColdGrey),
          ),
        ),
        Positioned(
          top: 1,
          left: 10,
          child: Center(
              child: Image.asset(
            product.picture,
            height: 70,
            width: 70,
          )),
        )
      ],
    );
  }
}
