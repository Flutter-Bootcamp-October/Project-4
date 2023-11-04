import 'package:flutter/material.dart';
import 'package:shopping_app/screens/checkout.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';
import 'package:shopping_app/widgets/show_order.dart';
import 'package:shopping_app/widgets/total_money.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "My Orders",
          actionIcon: Icons.close),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ShowOrder(),
            TotalMoney(),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CheckoutScreen();
          }));
        },
        child: const Text("add"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
