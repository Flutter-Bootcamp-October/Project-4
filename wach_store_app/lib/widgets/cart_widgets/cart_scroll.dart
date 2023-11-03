import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/widgets/cart_product_widget.dart';

class CartScroll extends StatelessWidget {
  const CartScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return CartProdectWidget(wach: WachProductList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 4,
        );
      },
      itemCount: WachProductList.length,
    );
  }
}
