import 'package:flutter/material.dart';
import 'package:wach_store_app/dataset/wach_dataset.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/wach_model.dart';
import 'package:wach_store_app/screens/checkout_screen.dart';
import 'package:wach_store_app/widgets/appbar/app_bar.dart';
import 'package:wach_store_app/widgets/cart_widgets/cart_scroll.dart';
import 'package:wach_store_app/widgets/cart_widgets/data_details_section.dart';
import 'package:wach_store_app/widgets/edit_button.dart';
import 'package:wach_store_app/widgets/profile_widget/profile_textfield_widget.dart';

class CartScreen extends StatefulWidget {
  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  TextEditingController copunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    calculateGlobalPrice();
    if (copunController.text == 'Flutter') {
      discountAmount = globalPrice * 0.25;
      grandTotal = globalPrice * discount;
    } else {
      grandTotal = globalPrice;
    }

    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      appBar: appbar(context, true, Icons.close, 'My Order', () {
        Navigator.pop(context);
      }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              CartScroll(),
              if (orderProducts.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: ProfileTextField(
                        Controller: copunController,
                        lable: 'Copun',
                      ),
                    ),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 90,
                      height: 40,
                      child: EditButton(
                        text: 'Applay',
                        onTap: () {
                          if (copunController.text == 'Flutter') {
                            discountAmount = globalPrice * 0.25;
                            grandTotal = globalPrice * discount;
                          } else {
                            grandTotal = globalPrice;
                          }

                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 40),
              DataDetailsSection(
                title: 'Item Total',
                price: "\$ ${globalPrice.toStringAsFixed(2)}",
                textColor: true,
              ),
              const SizedBox(
                height: 12,
              ),
              DataDetailsSection(
                title: 'Discount',
                price: '\$ $discountAmount',
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
              DataDetailsSection(
                title: 'Grand Total',
                textColor: true,
                isGrandtotal: true,
                price: "\$ ${grandTotal.toStringAsFixed(2)}",
              ),
              SizedBox(height: 40),
              EditButton(
                  text: 'Checkout',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
