import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/order_widget/amount_of_order_user.dart';
import 'package:project4/widgets/order_widget/check_out_order_buttom.dart';
import 'package:project4/widgets/order_widget/invoice_order_screen.dart';

class OrderInfoContent extends StatelessWidget {
  const OrderInfoContent({super.key, required this.product});
  final Watch product; // The product to add to the cart

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AmountOfOrderContainer(
          product: product,
        ),
        InvoiceOrderScreen(),
        height30,
        CheckOutButtom(),
        height30,
      ],
    );
  }
}
