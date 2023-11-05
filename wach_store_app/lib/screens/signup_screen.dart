import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/user.dart';
import 'package:wach_store_app/screens/nav_bar.dart';
import 'package:wach_store_app/screens/signin_screen.dart';
import 'package:wach_store_app/widgets/back_ground_image.dart';
import 'package:wach_store_app/widgets/blue_bold_text.dart';
import 'package:wach_store_app/widgets/custom_button.dart';
import 'package:wach_store_app/widgets/custom_password_text_field.dart';
import 'package:wach_store_app/widgets/custom_text_field.dart';
import 'package:wach_store_app/widgets/new_to_ADS.dart';
import 'package:wach_store_app/widgets/sign_in_logo.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      paswwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isMatched = false;
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
                      text: 'Let\'s Sign In',
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
                      controller: emailController,
                      isPass: false,
                    ),
                    SizedBox(height: 32),
                    CustomTextField(
                      hint: 'Enter Name Here',
                      label: 'Full Name',
                      icon: Icons.person_outline_sharp,
                      controller: nameController,
                      isPass: false,
                    ),
                    SizedBox(height: 32),
                    CustomPasswordTextField(
                      hint: 'Enter Password',
                      label: 'Password',
                      icon: Icons.remove_red_eye_outlined,
                      controller: paswwordController,
                    ),
                    SizedBox(height: 32),
                    CustomButton(
                        text: 'Sign up',
                        onTap: () {
                          /***********************************************************/
                          if (nameController.text.isNotEmpty &&
                              emailController.text.isNotEmpty &&
                              paswwordController.text.isNotEmpty) {
                            for (var user in userList) {
                              if (user.email == emailController.text) {
                                isMatched = true;
                                break;
                              }
                            }
                            if (!isMatched) {
                              User newUser = User(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: paswwordController.text);

                              userList.add(newUser);
                              userObject = newUser;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WachNavigationBar(),
                                  ));
                            } else {
                              isMatched = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Email is used")));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("Please insert all text fields")));
                          }
                        }
                        /**********************************************************/

                        ),
                    SizedBox(height: 48),
                    MemberCheck(
                      leftText: 'Joind us before? ',
                      rightText: 'Sign in',
                      onTap: () {
                        print('SignUp name: ${userObject?.name}');
                        print('SignUp email: ${userObject?.email}');
                        print('SignUp pass: ${userObject?.password}');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
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
