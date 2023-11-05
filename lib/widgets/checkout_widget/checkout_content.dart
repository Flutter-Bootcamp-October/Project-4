import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/checkout_widget/address_container.dart';
import 'package:project4/widgets/checkout_widget/payment_choose.dart';
import 'package:project4/widgets/checkout_widget/place_order_buttom.dart';
import 'package:project4/widgets/order_widget/invoice_order_screen.dart';

class CheckOutContent extends StatelessWidget {
  const CheckOutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Order will be \nDelivere To",
                style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: appColorBlue),
              ),
              height28,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      AddressContainer(),
                    ],
                  ),
                ),
              ),
              Text(
                "Payment Method",
                style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: appColorBlue),
              ),
              height12,
              PaymentChosse(),
              height18,
              InvoiceOrderScreen(),
              height20,
              PlaceOrderButtom(),
              height20,
            ],
          ),
        ),
      ),
    );
  }
}