import 'package:flutter/material.dart';
import 'package:project4/global/global.dart';
import 'package:project4/widegts/add_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        TextEditingController(text: currentUser.email);
    TextEditingController passwordController =
        TextEditingController(text: currentUser.password);
    TextEditingController nameController =
        TextEditingController(text: currentUser.name);
    TextEditingController phoneController =
        TextEditingController(text: currentUser.phone);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: SizedBox(
                    height: 90,
                    width: 90,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/person.jpg",
                            fit: BoxFit.cover))),
              ),
              const SizedBox(
                height: 60,
              ),
              AddTextField(
                label: 'Full Name',
                hint: 'Enter name here',
                isPassword: false,
                controller: emailController,
                icon: Icons.mail_outline,
              ),
              const SizedBox(
                height: 30,
              ),
              AddTextField(
                label: 'Mobile Number',
                hint: 'Enter mobile number',
                isPassword: false,
                controller: phoneController,
                icon: Icons.local_phone_outlined,
              ),
              const SizedBox(
                height: 30,
              ),
              AddTextField(
                label: 'Username Or Email',
                hint: 'Enter Username Or Email',
                isPassword: false,
                controller: nameController,
                icon: Icons.person_2_outlined,
              ),
              const SizedBox(
                height: 30,
              ),
              AddTextField(
                label: 'Password',
                hint: 'Enter Password',
                isPassword: true,
                controller: passwordController,
                icon: Icons.remove_red_eye_outlined,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: InkWell(
                  onTap: () {
                    if (nameController.text.isNotEmpty &&
                        emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty &&
                        phoneController.text.isNotEmpty) {
                      currentUser.name = nameController.text;
                      currentUser.email = emailController.text;
                      currentUser.password = passwordController.text;
                      currentUser.phone = phoneController.text;

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog.adaptive(
                            title: const Text("Update Successfully !"),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please enter all the fields")));
                    }
                  },
                  child: Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xfffcc873)),
                    child: const Center(
                      child: Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
