import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "Checkout",
          actionIcon: Icons.close),
    );
  }
}
