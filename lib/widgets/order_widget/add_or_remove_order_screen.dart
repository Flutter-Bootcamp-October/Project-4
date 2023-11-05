import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class AddOrRemoveOrderScreen extends StatelessWidget {
  const AddOrRemoveOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              color: appColorYellow, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                size: 15,
                color: appColorBlue,
              )),
        ),
        height10,
        const Text("1"),
        height10,
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              color: appColorYellow, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 15,
                color: appColorBlue,
              )),
        ),
      ],
    );
  }
}
