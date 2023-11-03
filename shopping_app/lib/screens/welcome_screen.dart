import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/consts/global_consts.dart';
import 'package:shopping_app/widgets/button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'lib/assets/images/welcome.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 130),
                  const Text(
                    "Universal Timekeepers of the World",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'RomanaBeckerDemi'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    sentence,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 495),
                  ButtonWidget(
                    buttonColor: globalButtonColor,
                    buttonChild: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                    radius: 25,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
