import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/sign_up_screen.dart';

class SignUpButtom extends StatelessWidget {
  const SignUpButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("New to ADS Watch?"),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
            child: const Text(
              "Sign up",
              style: TextStyle(color: appColorBlue),
            )),
      ],
    );
  }
}
