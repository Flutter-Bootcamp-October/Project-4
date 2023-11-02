import 'package:flutter/material.dart';

IconData? icon;
String? title;
final bool visibal = true;
appbar(BuildContext context, visibal, icon, title) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
      onPressed: () {},
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(
      title!,
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      Visibility(
        visible: visibal,
        child: IconButton(
          icon: Icon(icon, color: Colors.black),
          onPressed: () {},
        ),
      ),
    ],
  );
}
