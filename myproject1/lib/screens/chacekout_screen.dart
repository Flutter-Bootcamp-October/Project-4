import 'package:flutter/material.dart';

class ChacekOutScreen extends StatefulWidget {
  const ChacekOutScreen({super.key});

  @override
  State<ChacekOutScreen> createState() => _ChacekOutScreenState();
}

class _ChacekOutScreenState extends State<ChacekOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Center(child: Text("ChacekOutScreen"))
    ],),);
  }
}