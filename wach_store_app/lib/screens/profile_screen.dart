import 'package:flutter/material.dart';
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
  TextEditingController nameController =
          TextEditingController(/*text: UserObject.name*/),
      emailController = TextEditingController(/*text: UserObject.email*/),
      mobileController = TextEditingController(/*text: UserObject.mobile*/),
      paswwordController = TextEditingController(/*text: UserObject.password*/);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(context, false, Icons.close, 'My Profile'),
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
                        'lib\\assets\\OIP.jpg',
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
                    // currentUser.mobile = mobileController.text;
                    // currentUser.name = nameController.text;
                    // currentUser.email = emailController.text;
                    // currentUser.password = paswwordController.text;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
