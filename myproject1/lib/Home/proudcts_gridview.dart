import 'package:flutter/material.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/wedgets/proudct_widget.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listProucts.length, // Assuming listProducts is a list of products
        itemBuilder: (context, index) {
          // Directly return a ProductWidget for the product at the current index
          return ProductWidget(
            product: listProucts[index],
          );
        },
      ),
    );
  }
}
