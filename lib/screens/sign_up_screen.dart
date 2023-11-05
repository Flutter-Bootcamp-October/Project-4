import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/login_widget/background_pic.dart';
import 'package:project4/widgets/login_widget/logo_ADS.dart';
import 'package:project4/widgets/signup_widget/signup_content_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        body: Stack(
          children: [BackgroundPic(), LogoADS(), SignUpContentWidget()],
        ),
      ),
    );
  }
}
