import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/screens/products_details.dart';

class RowCircleButton extends StatefulWidget {
  RowCircleButton({super.key, required this.watch});
  WatchProduct watch;
  @override
  State<RowCircleButton> createState() => _RowCircleButtonState();
}

class _RowCircleButtonState extends State<RowCircleButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Color(0xfffbcf7a),
              borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            child: Icon(Icons.remove),
            onTap: () {
              if (widget.watch.count! > 1) {
                widget.watch.count = widget.watch.count! - 1;
                globalPrice -= double.parse(widget.watch.price!);

                setState(() {});
                context
                    .findAncestorStateOfType<ProductDetailsScreenState>()!
                    .setState(() {});
              } else if (widget.watch.count! == 1) {
                widget.watch.count = 0;
                globalPrice = globalPrice -
                    (double.parse(widget.watch.price!) * widget.watch.count!);
                orderProducts.remove(widget.watch);
                context
                    .findAncestorStateOfType<ProductDetailsScreenState>()!
                    .setState(() {});
              }
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          widget.watch.count.toString(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Color(0xfffbcf7a),
              borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            child: const Icon(
              Icons.add,
            ),
            onTap: () {
              globalPrice += double.parse(widget.watch.price!);
              if (!orderProducts.contains(widget.watch)) {
                orderProducts.add(widget.watch);
                widget.watch.count = 1;
              }
              setState(() {});
              context
                  .findAncestorStateOfType<ProductDetailsScreenState>()!
                  .setState(() {});
              widget.watch.count = widget.watch.count! + 1;
              globalPrice += double.parse(widget.watch.price!);

              context
                  .findAncestorStateOfType<ProductDetailsScreenState>()!
                  .setState(() {});
            },
          ),
        )
      ],
    );
  }
}
