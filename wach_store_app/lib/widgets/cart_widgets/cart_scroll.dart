import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/widgets/cart_widgets/cart_product_widget.dart';

class CartScroll extends StatefulWidget {
  const CartScroll({
    super.key,
  });

  @override
  State<CartScroll> createState() => _CartScrollState();
}

class _CartScrollState extends State<CartScroll> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onLongPress: () {
            orderProducts[index].count = 0;
            globalPrice = globalPrice -
                (double.parse(orderProducts[index].price!) *
                    orderProducts[index].count!);
            orderProducts.remove(orderProducts[index]);

            setState(() {});
          },
          child: CartProdectWidget(watch: orderProducts[index]),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 4,
        );
      },
      itemCount: orderProducts.length,
    );
  }
}
