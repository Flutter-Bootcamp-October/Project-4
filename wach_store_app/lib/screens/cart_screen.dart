import 'package:flutter/material.dart';
import 'package:wach_store_app/dataset/wach_dataset.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/widgets/appbar/app_bar.dart';
import 'package:wach_store_app/widgets/cart_widgets/cart_product_widget.dart';
import 'package:wach_store_app/widgets/cart_widgets/cart_scroll.dart';
import 'package:wach_store_app/widgets/cart_widgets/data_details_section.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  void initState() {
    super.initState();
    for (var wach in WachDataSet) {
      WachProductList.add(WachProduct.fromJson(wach));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, true, Icons.close, 'My Order'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CartScroll(),
              const DataDetailsSection(
                title: 'Item Total',
                price: '\$10,849.00',
                textColor: true,
              ),
              const SizedBox(
                height: 12,
              ),
              const DataDetailsSection(
                title: 'Discount',
                price: '\$849.00',
                textColor: true,
              ),
              const SizedBox(
                height: 12,
              ),
              const DataDetailsSection(
                title: 'Delivery Free',
                textColor: false,
                price: 'Free',
              ),
              const SizedBox(
                height: 12,
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
                isGrandtotal: true,
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
      ),
    );
  }
}
