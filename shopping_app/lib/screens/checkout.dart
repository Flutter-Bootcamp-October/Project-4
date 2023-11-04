import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/global/global.dart';
import 'package:shopping_app/screens/bottom_nav_bar.dart';
import 'package:shopping_app/widgets/addrees.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';
import 'package:shopping_app/widgets/radio_button.dart';
import 'package:shopping_app/widgets/total_money.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedAdress = 0;
  int selectedPayment = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "Checkout",
          actionIcon: Icons.close),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "your order will be\ndelivered to",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: InkWell(
                  onTap: () {
                    selectedAdress = 0;
                    setState(() {});
                  },
                  child: Address(
                    address: "Home",
                    addressInfo1: "3321 Albatalyah AlAhsaa .St",
                    addressInfo2: "Kinkdom of Saudi Arabia",
                    mobileNumber: "+966 53 33 5585",
                    isSelected: selectedAdress == 0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: InkWell(
                  onTap: () {
                    selectedAdress = 1;
                    setState(() {});
                  },
                  child: Address(
                    address: "Work",
                    addressInfo1: "Dammam Street 121.st",
                    addressInfo2: "Kingdom of Suadi Arabia",
                    mobileNumber: "+110 53 33 5585",
                    isSelected: selectedAdress == 1,
                  ),
                ),
              ),
            ]),
          ),
          const Text("Pament Method",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          InkWell(
            onTap: () {
              selectedPayment = 0;
              setState(() {});
            },
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child:
                      Icon(Icons.credit_card_rounded, color: Colors.blueGrey),
                ),
                const SizedBox(width: 16),
                const Text("Credit/Debit Card"),
                const Spacer(),
                RadioBotton(isSelected: selectedPayment == 0)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              selectedPayment = 1;
              setState(() {});
            },
            child: Row(
              children: [
                const Icon(Icons.paypal, color: Colors.blue),
                const SizedBox(width: 16),
                const Text("PayPal"),
                const Spacer(),
                RadioBotton(isSelected: selectedPayment == 1)
              ],
            ),
          ),
          const SizedBox(height: 32),
          const TotalMoney(),
        ]),
      ),
      floatingActionButton: ButtonCustom(
          buttonColor: appYellow,
          buttonChild: const Text(
            "Place Order",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            if (selectedPayment != -1) {
              currentUser.cart = [];
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBottonNabBar()),
                  (route) => false);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Choose Pament Method")));
            }
          },
          radius: 20),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
