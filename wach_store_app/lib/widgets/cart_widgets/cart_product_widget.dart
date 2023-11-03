import 'package:flutter/material.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/widgets/cart_widgets/column_circle_button_widget.dart';

class CartProdectWidget extends StatefulWidget {
  const CartProdectWidget({super.key, required this.wach});
  final WachProduct wach;
  @override
  State<CartProdectWidget> createState() => _CartProdectWidgetState();
}

class _CartProdectWidgetState extends State<CartProdectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.wach.image,
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.wach.name,
                  style: const TextStyle(
                    color: Color(0xff163368),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.wach.description,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '\$${widget.wach.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const ColumnCircleButton()
        ],
      ),
    );
  }
}
