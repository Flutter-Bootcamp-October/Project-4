import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.isObscureText,
    required this.controller,
    this.hasSuffix,
    this.initialValue,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool isObscureText;
  final Icon? hasSuffix;
  final String? initialValue;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  void initState() {
    super.initState();

    if (widget.initialValue != null) {
      widget.controller.text = widget.initialValue ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.isObscureText,
          decoration: InputDecoration(
            suffixIcon: widget.hasSuffix,
            
            contentPadding: EdgeInsets.only(left: 25),
            labelText: widget.labelText,
            labelStyle: const TextStyle(
              color: appColorDarkGrey,
            ),
            hintText: widget.hintText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(58, 143, 143, 143)),
            filled: true,
            fillColor: const Color.fromARGB(153, 255, 255, 255),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: appColorDarkWhite),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: appColorDarkWhite),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ));
  }
}
