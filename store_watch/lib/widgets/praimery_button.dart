import 'package:flutter/material.dart';

class PraimeryButton extends StatelessWidget {
  const PraimeryButton({super.key, required this.buttonTitle});
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      child: FloatingActionButton.extended(
        backgroundColor: const Color(0xfffcc873),
        onPressed: () {},
        label: Text(
          buttonTitle,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
