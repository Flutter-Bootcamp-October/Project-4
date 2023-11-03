import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/textfield_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              badges.Badge(
                  position: badges.BadgePosition.topStart(top: 1, start: 60),
                  badgeStyle:
                      const badges.BadgeStyle(badgeColor: globalButtonColor),
                  badgeContent: const Icon(Icons.camera_alt_outlined),
                  child: Image.asset('lib/assets/images/profile.png',
                      width: 90, height: 90)),
              const SizedBox(height: 40),
              TextFieldCustom(
                hint: 'Enter Full Name',
                labelText: const Text("Name"),
              ),
              const SizedBox(height: 30),
              TextFieldCustom(
                hint: 'Enter mobile number',
                labelText: const Text("Mobile Number"),
              ),
              const SizedBox(height: 30),
              TextFieldCustom(
                hint: 'Enter Email Address',
                labelText: const Text("Email Address"),
              ),
              const SizedBox(height: 30),
              TextFieldCustom(
                hint: 'Enter Password',
                labelText: const Text("Password"),
                icon: const Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 30),
              ButtonCustom(
                buttonColor: globalButtonColor,
                buttonChild: const Text(
                  "Update",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
