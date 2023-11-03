import 'package:flutter/material.dart';
import 'package:store_watch/widgets/praimery_button.dart';
import 'package:store_watch/widgets/profile_text_filed.dart';
import 'package:badges/badges.dart' as badges;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_arrow_left_rounded,
          color: Colors.black,
          size: 32,
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 32),
                child: badges.Badge(
                  badgeAnimation: const badges.BadgeAnimation.fade(),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Color(0xfffcc873),
                  ),
                  badgeContent: const Icon(Icons.photo_camera_outlined),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/profile_image.jpeg",
                      width: 100,
                    ),
                  ),
                ),
              ),
            ),
            const ProfileTextFiled(
              hint: 'Name',
              labelText: 'Name',
              isPassword: false,
            ),
            const ProfileTextFiled(
              hint: 'Mobile Number',
              labelText: 'Mobile Number',
              isPassword: false,
            ),
            const ProfileTextFiled(
              hint: 'Email Address',
              labelText: 'Email Address',
              isPassword: false,
            ),
            const ProfileTextFiled(
              hint: 'Password',
              labelText: 'Password',
              isPassword: true,
              icon: Icons.lock_outlined,
            ),
            const SizedBox(
              height: 24,
            ),
            PraimeryButton(buttonTitle: "Update", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
