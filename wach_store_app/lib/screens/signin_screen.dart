import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/user.dart';
import 'package:wach_store_app/screens/home_screen.dart';
import 'package:wach_store_app/screens/nav_bar.dart';
import 'package:wach_store_app/screens/signup_screen.dart';
import 'package:wach_store_app/widgets/back_ground_image.dart';
import 'package:wach_store_app/widgets/blue_bold_text.dart';
import 'package:wach_store_app/widgets/custom_button.dart';
import 'package:wach_store_app/widgets/custom_button_with_icon.dart';
import 'package:wach_store_app/widgets/custom_password_text_field.dart';
import 'package:wach_store_app/widgets/custom_text_field.dart';
import 'package:wach_store_app/widgets/forget_password.dart';
import 'package:wach_store_app/widgets/new_to_ADS.dart';
import 'package:wach_store_app/widgets/or.dart';
import 'package:wach_store_app/widgets/sign_in_logo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController(),
      paswwordController = TextEditingController();
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
                      controller: emailController,
                      isPass: false,
                    ),
                    SizedBox(height: 32),
                    CustomPasswordTextField(
                      hint: 'Enter Password',
                      label: 'Password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: paswwordController,
                    ),
                    SizedBox(height: 16),
                    ForgetPassword(),
                    SizedBox(height: 32),
                    CustomButton(
                      text: 'Sign in',
                      onTap: () {
                        for (var user in userList) {
                          if (user.email == emailController.text &&
                              user.password == paswwordController.text) {
                            userObject = user;
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WachNavigationBar(),
                              ),
                              (route) => false,
                            );
                            return;
                          }
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("email or password are incorrect")));
                      },
                    ),
                    SizedBox(height: 16),
                    Or(),
                    SizedBox(height: 16),
                    CustomButtonWithIcon(),
                    SizedBox(height: 16),
                    MemberCheck(
                      leftText: 'New To ADS Watch? ',
                      rightText: 'Sign Up',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
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
