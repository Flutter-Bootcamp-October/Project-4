import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hint, required this.label, required this.icon});
  IconData icon;
  String hint;
  String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff000000)),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff000000)),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff000000)),
              borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xffeaebea)),
          labelText: label,
          labelStyle: TextStyle(color: Color(0xff000000)),
          filled: true,
          fillColor: const Color.fromARGB(255, 223, 218, 218).withOpacity(0.5),
          suffixIcon: Icon(
            icon,
            color: Color(0xff000000),
          )),
    );
  }
}
