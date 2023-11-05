import 'package:flutter/material.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/screens/signin_screen.dart';
import 'package:wach_store_app/widgets/appbar/app_bar.dart';
import 'package:wach_store_app/widgets/edit_button.dart';
import 'package:wach_store_app/widgets/profile_widget/profile_textfield_passwerd.dart';
import 'package:wach_store_app/widgets/profile_widget/profile_textfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? name;
  String? email;
  String? password;

  @override
  @override
  Widget build(BuildContext context) {
    print(userObject?.name);
    TextEditingController nameController =
            TextEditingController(text: userObject?.name),
        emailController = TextEditingController(text: userObject?.email),
        mobileController = TextEditingController(text: userObject?.mobile),
        paswwordController = TextEditingController(text: userObject?.password);
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      appBar: appbar(context, false, Icons.close, 'My Profile', () {}),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'lib/assets/images/OIP.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 60,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xfffbcf7a),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 20,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              ProfileTextField(
                lable: 'Name',
                Controller: nameController,
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileTextField(
                lable: 'Mobile Number',
                Controller: mobileController,
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileTextField(
                lable: 'Email Address',
                Controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileTextFieldPasswerd(
                lable: 'Passwerd',
                Controller: paswwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              EditButton(
                text: 'Update',
                onTap: () {
                  if (nameController.text.isNotEmpty &&
                      mobileController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      paswwordController.text.isNotEmpty) {
                    userObject!.mobile = mobileController.text;
                    userObject!.name = nameController.text;
                    userObject!.email = emailController.text;
                    userObject!.password = paswwordController.text;
                  }
                },
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
