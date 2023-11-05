import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hint,
      required this.label,
      required this.icon,
      required this.controller});
  IconData icon;
  String hint;
  String label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff9d9a9d)),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff9d9a9d)),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff9d9a9d)),
              borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xffeaebea)),
          labelText: label,
          labelStyle: TextStyle(color: Color(0xff9d9a9d)),
          filled: true,
          fillColor: Color(0xfffffefe).withOpacity(0.5),
          suffixIcon: Icon(
            icon,
            color: Color(0xff9d9a9d),
          )),
    );
  }
}
