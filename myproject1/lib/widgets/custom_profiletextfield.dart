import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileTextField extends StatefulWidget {
  final String label;
  IconData? icon;

  ProfileTextField({required this.label, this.icon});

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: Icon(
            widget.icon,
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
