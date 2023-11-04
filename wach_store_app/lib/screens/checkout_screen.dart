
import 'package:flutter/material.dart';
import 'package:wach_store_app/widgets/address_card.dart';
import 'package:wach_store_app/widgets/checkout_division.dart';
import 'package:wach_store_app/widgets/custom_appbar_with_text.dart';

List<String> options = ['mastercard', 'paypal'];

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 64),
              CustomAppBarWithText(),
              SizedBox(height: 24),
              CheckoutDivision(title: 'Your Order Will Be\nDelivered To'),
              SizedBox(height: 24),
              AddressCard(),
              SizedBox(height: 40),
              CheckoutDivision(title: 'Payment Method'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/mastercard.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 24),
                      Text('Credit/Debit Card'),
                    ],
                  ),
                  Radio(
                      value: options[0],
                      groupValue: currentOption,
                      onChanged: (value) {
                        currentOption = value.toString();
                        setState(() {});
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/paypal.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 24),
                      Text('Paypal'),
                    ],
                  ),
                  Radio(
                      value: options[1],
                      groupValue: currentOption,
                      onChanged: (value) {
                        currentOption = value.toString();
                        setState(() {});
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
