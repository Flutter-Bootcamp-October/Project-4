import 'package:flutter/material.dart';
import 'package:shopingpriject/models/product_model.dart';

class DetilScreen extends StatefulWidget {
  const DetilScreen({super.key, required Product product});

  @override
  State<DetilScreen> createState() => _DetilScreenState();
}

class _DetilScreenState extends State<DetilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Center(child: Text("DetilScreen"))
    ],),);
  }
}