import 'package:flutter/material.dart';

class DetilScreen extends StatefulWidget {
  const DetilScreen({super.key});

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