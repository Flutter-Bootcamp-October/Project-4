import 'package:flutter/material.dart';

class CustomAppBarWithText extends StatelessWidget {
  const CustomAppBarWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 24,
        ),
        Text('Checkout'),
        Icon(
          Icons.cancel_outlined,
          size: 24,
        ),
      ],
    );
  }
}
