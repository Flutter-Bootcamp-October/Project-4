import 'package:flutter/material.dart';

class CustomAppBarWithImage extends StatelessWidget {
  const CustomAppBarWithImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.format_list_bulleted_outlined,
          size: 24,
        ),
        Image.asset(
          'lib/assets/images/appbar_logo.png',
          height: 32,
        ),
        Icon(
          Icons.filter_list,
          size: 24,
        ),
      ],
    );
  }
}
