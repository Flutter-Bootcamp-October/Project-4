import 'package:flutter/material.dart';
import 'package:wach_store_app/widgets/column_circle_button_widget.dart';

class CartProdectWidget extends StatefulWidget {
  const CartProdectWidget({super.key});

  @override
  State<CartProdectWidget> createState() => _CartProdectWidgetState();
}

class _CartProdectWidgetState extends State<CartProdectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'lib\\assets\\watches_PNG9866.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Title',
                  style: TextStyle(color: Color(0xff163368),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Product Description',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '\$9.99',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
          ColumnCircleButton()
        ],
      ),
    );
  }
}
