import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/global/global.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/screens/my_order_screen.dart';

class ShowOrder extends StatefulWidget {
  const ShowOrder({super.key, required this.product});
  final Product product;

  @override
  State<ShowOrder> createState() => _ShowOrderState();
}

class _ShowOrderState extends State<ShowOrder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Image.asset(widget.product.image),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              widget.product.name,
              style: const TextStyle(
                  color: appBlue, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 165,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  widget.product.description,
                  style: const TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
            ),
            Text(
              "\$${(widget.product.price * widget.product.count).toStringAsFixed(2)}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(width: 32),
        Column(
          children: [
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                widget.product.count++;
                context
                    .findAncestorStateOfType<MyOrderScreenState>()
                    ?.setState(() {});
              },
              child: ClipOval(
                child: Container(
                  width: 30,
                  height: 30,
                  color: appYellow,
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "${widget.product.count}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                if (widget.product.count > 1) {
                  widget.product.count--;
                  context
                      .findAncestorStateOfType<MyOrderScreenState>()
                      ?.setState(() {});
                } else {
                  widget.product.count--;
                  currentUser.cart
                      .removeWhere((product) => product == widget.product);
                  context
                      .findAncestorStateOfType<MyOrderScreenState>()
                      ?.setState(() {});
                }
              },
              child: ClipOval(
                child: Container(
                  width: 30,
                  height: 30,
                  color: appYellow,
                  child: const Icon(Icons.remove),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
