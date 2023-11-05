import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/Model/User_model.dart';
import 'package:project4/screens/login_screen.dart';
import 'package:project4/widgets/login_widget/description_text_screen.dart';
import 'package:project4/widgets/login_widget/first_text_ADS_watch.dart';
import 'package:project4/widgets/login_widget/sign_in_buttom.dart';
import 'package:project4/widgets/signup_widget/sgin_in_buttom.dart';
import 'package:project4/widgets/text_field_widget.dart';
import '../../constant/constant.dart';
import '../login_widget/title_text_screen.dart';

class SignUpContentWidget extends StatelessWidget {
  const SignUpContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMatched = false;

    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();

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
            titleScreen: "Let's Sign up",
          ),
          //---------------------------------
          height8,
          const DescriptionTextScreen(
            descriptionScreen: "Let's sign up to get rewards.",
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
            controller: fullNameController,
            labelText: "Full Name",
            hintText: "Enter Name Here ",
            isObscureText: false,
            hasSuffix: Icon(
              Icons.person_outline,
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
          //---------------------------------
          height14,
          ButtomWidget(
            textButtom: 'Sign up',
            onPressed: () {
              populateUserList();
              if (usernameController.text.isNotEmpty &&
                  fullNameController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty) {
                for (var user in userList) {
                  if (user.username == usernameController.text) {
                    isMatched = true;
                  }
                }
                if (!isMatched) {
                  User newUser = User(
                    fullName: fullNameController.text,
                    username: usernameController.text,
                    password: passwordController.text,
                    emailAddress: "www@الكمال لله",
                    img: "assets/images/watches/watch1.jpg",
                  );
                  userList.add(newUser);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                } else {
                  isMatched = false;
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Email or Username are used")));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please insert all text fields")));
              }
            },
          ),
          //----------------------------------
          height32,
          const SignInButtom()
        ],
      ),
    );
  }
}
