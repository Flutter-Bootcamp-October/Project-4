import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class WatchInfoAndCount extends StatefulWidget {
  const WatchInfoAndCount({Key? key, required this.watch}) : super(key: key);
  final Watch watch;

  @override
  _WatchInfoAndCountState createState() => _WatchInfoAndCountState();
}

class _WatchInfoAndCountState extends State<WatchInfoAndCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              widget.watch.name,
              style: const TextStyle(
                  fontFamily: "PlayfairDisplay",
                  color: appColorBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            height10,
            Row(
              children: [
                Text(
                  "\$ ${(widget.watch.price * (widget.watch.count ?? 0)).toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontFamily: "PlayfairDisplay",
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: appColorYellow, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.watch.count != null &&
                          widget.watch.count! > 0) {
                        widget.watch.count = (widget.watch.count! - 1).toInt();
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: appColorBlue,
                  ),
                ),
              ),
              Text((widget.watch.count ?? 0).toString()),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: appColorYellow, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.watch.count = (widget.watch.count ?? 0) + 1;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: appColorBlue,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
