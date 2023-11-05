import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/widgets/order_widget/add_or_remove_order_screen.dart';
import 'package:project4/widgets/order_widget/pic_watch_order_screen.dart';
import 'package:project4/widgets/order_widget/watch_info_order_screen.dart';

class AmountOfOrderContainer extends StatelessWidget {
  const AmountOfOrderContainer({Key? key, required this.product});
  final Watch product; // The product to add to the cart
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: orderWatch.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Orders(
            product: product,
          );
        },
      ),
    );
  }
}

class Orders extends StatelessWidget {
  const Orders({Key? key, required this.product});
  final Watch product; // The product to add to the cart

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PicWatchOrderScreen(product: product),
              WatchInfoOrderScreen(),
              AddOrRemoveOrderScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
