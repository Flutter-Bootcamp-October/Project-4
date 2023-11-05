import 'package:bootcamp_project_4/components/back_ground_image.dart';
import 'package:bootcamp_project_4/components/blue_bold_text.dart';
import 'package:bootcamp_project_4/components/custom_button.dart';
import 'package:bootcamp_project_4/components/custom_button_with_icon.dart';
import 'package:bootcamp_project_4/components/custom_text_field.dart';
import 'package:bootcamp_project_4/components/forget_password.dart';
import 'package:bootcamp_project_4/components/new_to_ADS.dart';
import 'package:bootcamp_project_4/components/or.dart';
import 'package:bootcamp_project_4/components/sign_in_logo.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffefe),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            BackGroundImage(src: 'lib/assets/images/watch-9.png'),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: MediaQuery.sizeOf(context).width),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.20),
                    SignInLogo(),
                    SizedBox(height: 24),
                    BlueBoldText(
                      text: 'Let\s Sign In',
                      size: 32,
                    ),
                    Text(
                      'Let\'s sign up to get rewards.',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 32),
                    CustomTextField(
                      hint: 'Enter Username or Email',
                      label: 'Email',
                      icon: Icons.mail_outline_rounded,
                    ),
                    SizedBox(height: 32),
                    CustomTextField(
                      hint: 'Enter Name Here',
                      label: 'Full Name',
                      icon: Icons.person_outline_sharp,
                    ),
                    SizedBox(height: 32),
                    CustomTextField(
                      hint: 'Enter Password',
                      label: 'Password',
                      icon: Icons.remove_red_eye_outlined,
                    ),
                    SizedBox(height: 32),
                    CustomButton(text: 'Sign up'),
                    SizedBox(height: 48),
                    MemberCheck(
                      leftText: '',
                      rightText: '',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
