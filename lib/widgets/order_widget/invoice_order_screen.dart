import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class InvoiceOrderScreen extends StatelessWidget {
  const InvoiceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Item Total",
                style: TextStyle(color: appColorBlue),
              ),
              Text(
                "\$ 4356.000",
                style: TextStyle(color: appColorBlue),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: TextStyle(color: appColorBlue),
              ),
              Text(
                "\$ 24.30",
                style: TextStyle(color: appColorBlue),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Free",
                style: TextStyle(color: appColorGreen),
              ),
              Text(
                "Free",
                style: TextStyle(color: appColorGreen),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Grand Total",
                style: TextStyle(color: appColorBlue),
              ),
              Text(
                "\$ 100000",
                style: TextStyle(color: appColorBlue),
              )
            ],
          ),
        ],
      ),
    );
  }
}
