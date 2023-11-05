import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/screens/my_order_screen.dart';

class ColumnCircleButton extends StatefulWidget {
  ColumnCircleButton({super.key, required this.watch});
  WatchProduct watch;
  @override
  State<ColumnCircleButton> createState() => _ColumnCircleButtonState();
}

class _ColumnCircleButtonState extends State<ColumnCircleButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    .findAncestorStateOfType<CartScreenState>()!
                    .setState(() {});
              } else if (widget.watch.count! == 1) {
                widget.watch.count = 0;
                globalPrice = globalPrice -
                    (double.parse(widget.watch.price!) * widget.watch.count!);
                orderProducts.remove(widget.watch);
                context
                    .findAncestorStateOfType<CartScreenState>()!
                    .setState(() {});
              }
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.watch.count.toString(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
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
                  .findAncestorStateOfType<CartScreenState>()!
                  .setState(() {});
              widget.watch.count = widget.watch.count! + 1;
              globalPrice += double.parse(widget.watch.price!);

              context
                  .findAncestorStateOfType<CartScreenState>()!
                  .setState(() {});
            },
          ),
        )
      ],
    );
  }
}
