import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/nav_bar_screen.dart';
import 'package:project4/widgets/login_widget/first_text_ADS_watch.dart';
import 'package:project4/widgets/login_widget/forgot_password_text.dart';
import 'package:project4/widgets/login_widget/google_sgin_in_buttom.dart';
import 'package:project4/widgets/login_widget/title_text_screen.dart';
import 'package:project4/widgets/login_widget/sign_in_buttom.dart';
import 'package:project4/widgets/login_widget/sign_up_buttom.dart';
import 'package:project4/widgets/login_widget/description_text_screen.dart';
import 'package:project4/widgets/text_field_widget.dart';

class LoginContentWidget extends StatelessWidget {
  const LoginContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--------------------------------
          const FirstTextADSWatch(),
          //--------------------------------
          height40,
          const TitleTextScreen(
            titleScreen: "Let's Sign in",
          ),
          //---------------------------------
          height8,
          const DescriptionTextScreen(
            descriptionScreen: "Fill the details below to continue",
          ),
          //---------------------------------
          height40,
          TextFieldWidget(
            controller: usernameController,
            labelText: "Username or Email",
            hintText: "Enter Username or Email",
            isObscureText: false,
            hasSuffix: Icon(
              Icons.email_outlined,
              color: appColorGrey,
            ),
          ),
          //--------------------------------
          height30,
          TextFieldWidget(
            controller: passwordController,
            labelText: "Password",
            hintText: "Enter Password ",
            isObscureText: true,
            hasSuffix: Icon(
              Icons.remove_red_eye_outlined,
              color: appColorGrey,
            ),
          ),
          //--------------------------------
          const ForgotPasswordText(),
          //---------------------------------
          ButtomWidget(
            textButtom: 'Sign in',
            onPressed: () {
              populateUserList();
              for (var user in userList) {
                if (user.username == usernameController.text &&
                    user.password == passwordController.text) {
                  currentUser = user;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ),
                    (route) => false,
                  );
                  return;
                }
              }
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("email or password are incorrect"),
                ),
              );
            },
          ),
          height8,
          const Padding(
            padding: EdgeInsets.only(left: 175),
            child: Text("OR"),
          ),
          //---------------------------------
          const GoogleSignInButtom(),
          //---------------------------------
          const SignUpButtom()
        ],
      ),
    );
  }
}
