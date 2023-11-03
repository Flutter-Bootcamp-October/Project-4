import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/global/global.dart';
import 'package:shopping_app/models/user_model.dart';
import 'package:shopping_app/screens/signin_screen.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/rich_text_widget.dart';
import 'package:shopping_app/widgets/textfield_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
                  controller: emailController,
                  hint: 'Enter Username or Email',
                  labelText: const Text("Username or Email"),
                  icon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 25),
                TextFieldCustom(
                  controller: nameController,
                  hint: 'Enter Name Here',
                  labelText: const Text("Full Name"),
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(height: 25),
                TextFieldCustom(
                  controller: passwordController,
                  isPassword: true,
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
                  onPressed: () {
                    if (emailController.text.isNotEmpty &&
                        nameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      currentUser = User(
                          email: emailController.text,
                          fullName: nameController.text,
                          imagePath: '',
                          mobileNumber: 'lib/assets/images/empty_profile.png',
                          password: passwordController.text);
                      if (usersList
                          .where((element) =>
                              element.email == emailController.text)
                          .isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "This Email has been used before, try with different email")));
                      } else if (usersList.contains(currentUser)) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "Seems like you're already a member. Please sign in instead")));
                        //navigate?
                      } else {
                        usersList.add(currentUser);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text("Please fill out all required fields")));
                    }
                  },
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
