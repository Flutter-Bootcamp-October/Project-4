import 'package:flutter/material.dart';
import 'package:store_watch/widgets/button_text.dart';
import 'package:store_watch/widgets/header.dart';
import 'package:store_watch/widgets/glass_text_filde.dart';
import 'package:store_watch/widgets/image_button.dart';
import 'package:store_watch/widgets/praimery_button.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

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
                      title: "Let's Sign in",
                      subTitle: "Fill the details below to continue."),
                  const SizedBox(height: 8),
                  const GlassTextFiled(
                    hint: "Enter Username or Email",
                    labelText: "Username or Email",
                    icon: Icons.email_outlined,
                    isPassword: false,
                  ),
                  const GlassTextFiled(
                    hint: "Enter Password",
                    labelText: "Password",
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff364c75)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 14),
                    child: PraimeryButton(
                      buttonTitle: "Sign in",
                      onPressed: () {},
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("OR",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 14),
                    child: ImageButton(),
                  ),
                  const ButtonText(
                      title: "New To ADS Watch", titleButton: " Sign up"),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
