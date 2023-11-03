import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/screens/signin_screen.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/rich_text_widget.dart';
import 'package:shopping_app/widgets/textfield_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'lib/assets/images/signup.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 310),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Let's Sign up",
                      style: TextStyle(
                          color: Color(0xff1e3867),
                          fontSize: 30,
                          fontFamily: 'RomanaBeckerDemi')),
                ),
                const SizedBox(height: 10),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Let's sign up to get rewards",
                      style: TextStyle(fontSize: 13),
                    )),
                const SizedBox(height: 43),
                TextFieldCustom(
                  hint: 'Enter Username or Email',
                  labelText: const Text("Username or Email"),
                  icon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 25),
                TextFieldCustom(
                  hint: 'Enter Username or Email',
                  labelText: const Text("Full Name"),
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(height: 25),
                TextFieldCustom(
                  hint: 'Enter Password',
                  labelText: const Text("Password"),
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
                const SizedBox(height: 25),
                ButtonCustom(
                  buttonColor: globalButtonColor,
                  buttonChild: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  radius: 20,
                ),
                const SizedBox(height: 70),
                const RichTextCustom(
                  text1: 'Joined us before? ',
                  text2: 'Sign in',
                  screen: SignInScreen(),
                )
              ],
            ),
          ))
    ]);
  }
}
