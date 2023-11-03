import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    super.key,
    required this.hint,
    required this.labelText,
    this.icon,
  });
  final String hint;
  final Text labelText;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 40,
      height: 60,
      child: TextField(
        // autofocus: true,
        decoration: InputDecoration(
          labelStyle:
              const TextStyle(color: Color.fromARGB(255, 119, 119, 119)),
          suffixIconColor: const Color(0xffdbd9d9),
          focusColor: const Color(0xffdbd9d9),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffdbd9d9)),
              borderRadius: BorderRadius.circular(13)),
          label: labelText,
          suffixIcon: icon,
          hintStyle: const TextStyle(color: Color(0xffdbd9d9)),
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(136, 219, 217, 217)),
              borderRadius: BorderRadius.circular(13)),
        ),
      ),
    );
  }
}
