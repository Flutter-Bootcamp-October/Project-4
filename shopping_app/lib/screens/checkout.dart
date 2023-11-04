import 'package:flutter/material.dart';
import 'package:shopping_app/screens/bottom_nav_bar.dart';
import 'package:shopping_app/widgets/addrees.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';
import 'package:shopping_app/widgets/total_money.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "Checkout",
          actionIcon: Icons.close),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "your order will be\ndelivered to",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Address(
                    address: "Home",
                    addressInfo1: "addressInfo1",
                    addressInfo2: "addressInfo2",
                    mobileNumber: "+966 53 33 5585"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Address(
                    address: "Work",
                    addressInfo1: "addressInfo1",
                    addressInfo2: "addressInfo2",
                    mobileNumber: "+110 53 33 5585"),
              ),
            ]),
          ),
          Text("Pament Method",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Icon(Icons.credit_card_rounded, color: Colors.blueGrey),
              ),
              Text("Credit/Debit Card")
            ],
          ),
          Row(
            children: [Icon(Icons.paypal, color: Colors.blue), Text("PayPal")],
          ),
          SizedBox(height: 32),
          TotalMoney(),
        ]),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const AppBottonNabBar()),
              (route) => false);
        },
        child: const Text("add"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
