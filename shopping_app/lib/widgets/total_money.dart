import 'package:flutter/material.dart';

class TotalMoney extends StatelessWidget {
  const TotalMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Item total"), Text("data")],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Discount"), Text("data")],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivary free", style: TextStyle(color: Colors.green)),
            Text("Free", style: TextStyle(color: Colors.green))
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Ground total"), Text("data")],
        ),
      ],
    );
  }
}
