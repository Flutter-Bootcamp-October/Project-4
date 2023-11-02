import 'package:flutter/material.dart';
import 'package:wach_store_app/widgets/appbar/app_bar.dart';
import 'package:wach_store_app/widgets/cart_product_widget.dart';
import 'package:wach_store_app/widgets/data_details_section.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, true, Icons.close, 'My Order'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CartProdectWidget(),
            const CartProdectWidget(),
            const CartProdectWidget(),
            const DataDetailsSection(
              title: 'Item Total',
              price: '\$10,849.00',
              textColor: true,
            ),
            const SizedBox(
              height: 8,
            ),
            const DataDetailsSection(
              title: 'Discount',
              price: '\$849.00',
              textColor: true,
            ),
            const SizedBox(
              height: 8,
            ),
            const DataDetailsSection(
              title: 'Delivery Free',
              textColor: false,
              price: 'Free',
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 12,
            ),
            const DataDetailsSection(
              title: 'Grand Total',
              textColor: true,
              price: '\$10,000.00',
            ),
            InkWell(
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xfffbcf7a),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
