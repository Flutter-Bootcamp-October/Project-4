import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 18,
          shadowColor: appColorColdGrey,
          child: TextField(
            cursorColor: appColorGrey,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: appColorGrey,
                size: 30,
              ),
              suffixIcon: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "x",
                    style: TextStyle(
                        color: appColorBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  )),
              disabledBorder: InputBorder.none,
              fillColor: appColorWhite,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: appColorWhite),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: appColorWhite),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )),
    );
  }
}
