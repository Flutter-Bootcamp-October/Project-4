import 'package:flutter/material.dart';

class DataDetailsSection extends StatelessWidget {
  const DataDetailsSection({
    super.key,
    required this.title,
    required this.price,
    required this.textColor,
    this.isGrandtotal = false,
  });
  final String title;
  final String price;
  final bool textColor;
  final bool isGrandtotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: isGrandtotal ? 24 : 18,
              fontWeight: isGrandtotal ? FontWeight.w900 : FontWeight.w500,
              color: textColor ? Colors.black : Colors.green[700]),
        ),
        Spacer(),
        Text(price,
            style: TextStyle(
              fontSize: isGrandtotal ? 24 : 16,
              fontWeight: isGrandtotal ? FontWeight.w900 : FontWeight.w500,
            ))
      ],
    );
  }
}
