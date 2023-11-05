import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello',
      style: TextStyle(
          fontFamily: 'Crimson',
          fontSize: 40,
          color: Color(0xff233a66),
          fontWeight: FontWeight.w900),
    );
  }
}
