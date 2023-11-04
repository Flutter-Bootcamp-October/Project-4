import 'package:flutter/material.dart';
import 'package:project_4/screens/NavigationBar/navigation_bar_widget.dart';
import 'package:project_4/widgets/custom_app_bar.dart';
import 'package:project_4/widgets/custom_button.dart';

import 'widgets/profile_text_field.dart';
import 'widgets/user_avatar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController(text: "John Smith");
  TextEditingController phoneController = TextEditingController(text: "5647 89532 1478");
  TextEditingController emailController = TextEditingController(text: "johnsmith@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "123123123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: customAppBar(
          title: "My Profile",
          context: context,
          hasAction: false,
          onPressedFunc: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
          }),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .65,
          child: Column(
            children: [
              const SizedBox(height: 8),
              const Expanded(child: UserAvatar()),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    ProfileTextField(
                        controller: nameController,
                        label: "Name",
                        isPassword: false,
                        inputType: TextInputType.text),
                    ProfileTextField(
                        controller: phoneController,
                        label: "Mobile Number",
                        isPassword: false,
                        inputType: TextInputType.number),
                    ProfileTextField(
                        controller: emailController,
                        label: "Email Address",
                        isPassword: false,
                        inputType: TextInputType.text),
                    ProfileTextField(
                        controller: passwordController,
                        label: "Password",
                        isPassword: true,
                        inputType: TextInputType.text),
                    CustomButton(
                        content: "Update",
                        hasIcon: false,
                        onPressedFunc: () {
                          if (nameController.text.isEmpty) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("Please ")));
                          }
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
