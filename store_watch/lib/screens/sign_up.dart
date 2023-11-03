import 'package:flutter/material.dart';
import 'package:store_watch/widgets/button_text.dart';
import 'package:store_watch/widgets/header.dart';
import 'package:store_watch/widgets/praimery_button.dart';
import 'package:store_watch/widgets/glass_text_filde.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
          top: 140,
          left: 200,
          child: Container(
            child: Image.asset(
              "assets/watch_login.png",
              width: 200,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Image.asset(
                    "assets/ads_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Header(
                      title: "Let's Sign up",
                      subTitle: "Let's sign up to get rewards."),
                  const SizedBox(height: 4),
                  const GlassTextFiled(
                    hint: "Enter Username or Email",
                    labelText: "Username or Email",
                    icon: Icons.email_outlined,
                    isPassword: false,
                  ),
                  const SizedBox(height: 4),
                  const GlassTextFiled(
                    hint: "Enter Name Here",
                    labelText: "Full Name",
                    icon: Icons.person_outlined,
                    isPassword: false,
                  ),
                  const SizedBox(height: 4),
                  const GlassTextFiled(
                    hint: "Enter Password",
                    labelText: "Password",
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 14),
                    child: PraimeryButton(
                      buttonTitle: "Sign Up",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 32),
                  const ButtonText(
                      title: "Joined us before?", titleButton: " Sign in"),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
