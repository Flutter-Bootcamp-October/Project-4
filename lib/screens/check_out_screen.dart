import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/checkout_widget/app_bar_checkout_screen.dart';
import 'package:project4/widgets/checkout_widget/checkout_content.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appColorWhite,
          appBar: AppBarCheckOutScreen(context),
          body: const CheckOutContent()),
    );
  }
}
