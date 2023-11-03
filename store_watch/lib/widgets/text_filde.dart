import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class UserTextFiled extends StatelessWidget {
  const UserTextFiled(
      {super.key,
      required this.hint,
      required this.labelText,
      required this.icon,
      required this.isPassword});

  final String hint;
  final String labelText;
  final IconData icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: TextField(
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 18),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 22),
            child: Icon(
              icon,
              color: Color(0xff999799),
            ),
          ),
        ),
      ).asGlass(
        clipBorderRadius: BorderRadius.circular(14),
      ),
    );
  }
}