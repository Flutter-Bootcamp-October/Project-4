import 'package:flutter/material.dart';

class WelocmeScreen extends StatefulWidget {
  const WelocmeScreen({super.key});

  @override
  State<WelocmeScreen> createState() => _WelocmeScreenState();
}

class _WelocmeScreenState extends State<WelocmeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(children: [
      Center(child: Column(children: [
        Container( width: 300,height: 700,
        
          child: Image.asset("lib\\assets\\imges\\img2.png",))
      ],))
    ],),);
  }
}