import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/order_widget/app_bar_order_screen.dart';
import 'package:project4/widgets/order_widget/order_info_content.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key, required this.product});

  final Watch product; // The product to add to the cart

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        appBar: AppBarOrderScreen(context),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                OrderInfoContent(
                  product: product,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
