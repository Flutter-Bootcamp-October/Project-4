import 'package:flutter/material.dart';
import 'package:project_4/screens/sign_up_screen.dart';
import 'package:project_4/widgets/elevated_button.dart';

import '../widgets/text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/in.png'),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lets Sign in',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'PlayfairDisplay',
                            color: Color.fromARGB(255, 2, 32, 84)),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Fill the details below to continue.'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
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
                      lable: 'Password',
                      hint: 'Enter Passsword',
                      icon: Icons.visibility_outlined,
                      controller: passwordController,
                      isPassword: true),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color.fromARGB(255, 2, 32, 84)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomElevatedButton(
                    text: 'Sign in',
                    color: const Color(0xfffccf78),
                    onPressedFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ));
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('OR'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          minimumSize: const Size(400, 60),
                          backgroundColor: const Color(0xfff9f8f8)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/g.PNG'),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign in with Google',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New to ADS Watch?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              )),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 2, 32, 84)),
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
