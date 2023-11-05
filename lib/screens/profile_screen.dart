import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/profile_widget/app_bar_profile.dart';
import 'package:project4/widgets/profile_widget/profile_content_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget(context, "My Profile"),
        backgroundColor: appColorWhite,
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const ProfileContentWidget(),
          ),
        ),
      ),
    );
  }
}
