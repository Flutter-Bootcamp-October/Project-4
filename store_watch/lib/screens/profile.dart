import 'package:flutter/material.dart';
import 'package:store_watch/widgets/praimery_button.dart';
import 'package:store_watch/widgets/profile_text_filed.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("jjj")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipOval(
                  child: Image.asset(
                    "assets/profile_image.jpeg",
                    width: 100,
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
              PraimeryButton(buttonTitle: "Update", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
