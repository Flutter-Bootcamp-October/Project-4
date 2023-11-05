import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/order_screen.dart';

class AddCardButtom extends StatefulWidget {
  final Watch product; // The product to add to the cart

  const AddCardButtom({Key? key, required this.product}) : super(key: key);

  @override
  State<AddCardButtom> createState() => _AddCardButtonState();
}

class _AddCardButtonState extends State<AddCardButtom> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 30,
      child: InkWell(
        onTap: () {
          if (!orderWatch.contains(widget.product)) {
            orderWatch.add(widget.product);
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return OrderScreen(product: widget.product);
              },
            ),
          );
        },
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: appColorYellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: appColorBlue,
                size: 20,
              ),
              SizedBox(width: 8),
              Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 15, color: appColorBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
