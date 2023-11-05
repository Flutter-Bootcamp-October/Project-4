import 'package:flutter/material.dart';
import 'package:shopping_app/global/global.dart';

class TotalMoney extends StatefulWidget {
  const TotalMoney({super.key});

  @override
  State<TotalMoney> createState() => _TotalMoneyState();
}

class _TotalMoneyState extends State<TotalMoney> {
  @override
  Widget build(BuildContext context) {
    double itemTotal = 0;
    double discount = 0;
    for (var product in currentUser.cart) {
      itemTotal += product.count * product.price;
      discount += product.count * product.price * product.discount;
    }
    double groundTotal = itemTotal - discount;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Item total"),
            Text('\$${itemTotal.toStringAsFixed(2)}')
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Discount"),
              Text("\$${discount.toStringAsFixed(2)}")
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivary free", style: TextStyle(color: Colors.green)),
            Text("Free", style: TextStyle(color: Colors.green))
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Ground total"),
            Text("\$${groundTotal.toStringAsFixed(2)}")
          ],
        ),
      ],
    );
  }
}
