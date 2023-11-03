import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/screens/signup_screen.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/rich_text_widget.dart';
import 'package:shopping_app/widgets/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'lib/assets/images/signin.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 240, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Let's Sign in",
                      style: TextStyle(
                          color: Color(0xff1e3867),
                          fontSize: 30,
                          fontFamily: 'RomanaBeckerDemi')),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Fill the details below to continue.")),
              Padding(
                padding: const EdgeInsets.only(top: 49, bottom: 29),
                child: TextFieldCustom(
                  hint: 'Enter Username or Email',
                  labelText: const Text("Username or Email"),
                  icon: const Icon(Icons.email_outlined),
                ),
              ),
              TextFieldCustom(
                hint: 'Enter Password',
                labelText: const Text("Password"),
                icon: const Icon(Icons.remove_red_eye_outlined),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forgot Password?"))),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: ButtonCustom(
                  buttonColor: globalButtonColor,
                  buttonChild: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  radius: 20,
                ),
              ),
              const Text("OR"),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: ButtonCustom(
                  buttonColor: const Color(0xfff9f8f8),
                  buttonChild: const Text(
                    "Sign in with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  radius: 20,
                ),
              ),
              const RichTextCustom(
                text1: 'New to ADS Watch? ',
                text2: 'Sign up',
                screen: SignUpScreen(),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
