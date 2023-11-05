import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/login_screen.dart';
import 'package:project4/screens/nav_bar_screen.dart';

PreferredSizeWidget AppBarWidget(BuildContext context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style:
            const TextStyle(color: appColorBlue, fontWeight: FontWeight.w400),
      ),
      backgroundColor: appColorWhite,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            },
            icon: const Icon(
              Icons.logout_rounded,
              color: appColorBlue,
            ))
      ],
      leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NavBar();
            }));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: appColorBlue,
          )));
}
