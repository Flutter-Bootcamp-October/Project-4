import 'package:flutter/material.dart';
import 'package:wach_store_app/widgets/appbar/app_bar.dart';
import 'package:wach_store_app/widgets/profile_widget/profile_textfield_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              const ProfileTextField(
                lable: 'Name',
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileTextField(
                lable: 'Mobile Number',
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileTextField(
                lable: 'Email Address',
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileTextField(
                lable: 'Passwerd',
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xfffbcf7a),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                      child: Text(
                    'Update',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
