import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/order_screen.dart';
import 'package:project4/Model/watch_product_model.dart';

PreferredSizeWidget AppBarWatchInfoScreen(BuildContext context, Watch product) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      "Watch",
      style: TextStyle(color: appColorBlue, fontWeight: FontWeight.w400),
    ),
    backgroundColor: appColorWhite,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: appColorBlue,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return OrderScreen(product: product);
            }));
          },
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: appColorBlue,
            size: 30,
          ),
        ),
      )
    ],
  );
}
