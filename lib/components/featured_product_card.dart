import 'package:flutter/material.dart';

class FeaturedProductCard extends StatelessWidget {
  FeaturedProductCard(
      {super.key, required this.name, required this.price, required this.src});
  String name;
  String src;
  num price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 170,
      child: Stack(
        children: [
          Positioned(
            top: 130,
            child: Image.asset(
              'lib/assets/images/card.png',
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            top: 32,
            left: 0,
            child: Image.asset(
              src,
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            top: 240,
            left: 48,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.blue[900],
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 70,
            child: Text(
              '\$$price',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
