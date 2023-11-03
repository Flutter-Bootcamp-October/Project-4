import 'package:flutter/material.dart';
import 'package:store_watch/screens/text_filde.dart';
import 'package:store_watch/widgets/image_button.dart';
import 'package:store_watch/widgets/praimery_button.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
          top: 140,
          left: 200,
          child: Container(
            child: Image.asset(
              "assets/watch_login.png",
              width: 200,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Image.asset(
                    "assets/ads_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Let's Sign in",
                    style: TextStyle(
                      fontFamily: "NotoSerif",
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff233b67),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Fill the details below to continue.",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  const UserTextFiled(
                    hint: "Enter Username or Email",
                    labelText: "Username or Email",
                    icon: Icons.email_outlined,
                    isPassword: false,
                  ),
                  const UserTextFiled(
                    hint: "Enter Password",
                    labelText: "Password",
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff364c75)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 14),
                    child: PraimeryButton(
                      buttonTitle: "Sign In",
                      onPressed: () {},
                      btnBackgroundColor: const Color(0xfffcc873),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("OR",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 14),
                    child: ImageButton(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: const TextSpan(
                        text: 'New To ADS Watch',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2c436d)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}





/*
import 'package:flutter/material.dart';
import 'package:store_watch/screens/text_filde.dart';
import 'package:store_watch/widgets/image_button.dart';
import 'package:store_watch/widgets/praimery_button.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Image.asset(
                    "assets/ads_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Let's Sign in",
                    style: TextStyle(
                      fontFamily: "NotoSerif",
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff233b67),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Fill the details below to continue.",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  const UserTextFiled(
                    hint: "Enter Username or Email",
                    labelText: "Username or Email",
                    icon: Icons.email_outlined,
                    isPassword: false,
                  ),
                  const UserTextFiled(
                    hint: "Enter Password",
                    labelText: "Password",
                    icon: Icons.password_outlined,
                    isPassword: true,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff364c75)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 14),
                    child: PraimeryButton(
                      buttonTitle: "Sign In",
                      onPressed: () {},
                      btnBackgroundColor: const Color(0xfffcc873),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("OR",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 14),
                    child: ImageButton(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: const TextSpan(
                        text: 'New To ADS Watch',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2c436d)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

*/



/*
Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/watch_login.png"),
          ),
        ),
        */