import 'package:flutter/material.dart';
import 'package:project4/data/globals.dart';
import 'package:project4/models/products_model.dart';
import 'package:project4/styles/custom_color.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 250, top: 15, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: listProducts
              .map((elemnet) => ProductView(
                    product: elemnet,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

//====================================================
class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 400,
          child: SizedBox(
              width: 200,
              height: 300,
              child: Image.asset("assets/Rectangle 2.png")),
        ),
        Positioned(
          left: 30,
          bottom: 60,
          child: Column(
            children: [
              Image.asset(product.image),
              Text(product.name),
              Text(product.price),
              FloatingActionButton(
                backgroundColor: primary,
                elevation: 0,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
