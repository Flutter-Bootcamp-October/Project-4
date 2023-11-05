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

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffefe),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            BackGroundImage(src: 'lib/assets/images/watch-8.png'),
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
                      'Fill the setails below to continue.',
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
                      hint: 'Enter Password',
                      label: 'Password',
                      icon: Icons.remove_red_eye_outlined,
                    ),
                    SizedBox(height: 16),
                    ForgetPassword(),
                    SizedBox(height: 32),
                    CustomButton(text: 'Sign in'),
                    SizedBox(height: 16),
                    Or(),
                    SizedBox(height: 16),
                    CustomButtonWithIcon(),
                    SizedBox(height: 16),
                    MemberCheck(
                      leftText: 'New To ADS Watch? ',
                      rightText: 'Sign Up',
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
