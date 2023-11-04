import 'package:flutter/material.dart';
import 'package:project_4/screens/sign_in_screen.dart';
import 'package:project_4/widgets/elevated_button.dart';
import 'package:project_4/widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/up.png'),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lets Sign Up',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'PlayfairDisplay',
                            color: Color.fromARGB(255, 2, 32, 84)),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Lets sign up to get rewards.'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CustomTextField(
                      lable: 'Username or Email',
                      hint: 'Enter Username or Email',
                      icon: Icons.mail_outline,
                      controller: emailController,
                      isPassword: false),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomTextField(
                      lable: 'Full Name',
                      hint: 'Enter Name Here',
                      icon: Icons.person_2_outlined,
                      controller: nameController,
                      isPassword: false),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomTextField(
                      lable: 'Passwor',
                      hint: 'Enter Password',
                      icon: Icons.visibility_outlined,
                      controller: emailController,
                      isPassword: true),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: CustomElevatedButton(
                    text: 'Sign Up',
                    color: const Color(0xfffccf78),
                    onPressedFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Joined us before?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInScreen(),
                              )),
                          child: const Text(
                            'sign in',
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 32, 84),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
