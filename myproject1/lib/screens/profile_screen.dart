import 'package:flutter/material.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/widgets/custom_profiletextfield.dart';
import 'package:shopingpriject/widgets/custom_updatebutton.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController userController =
          TextEditingController(text: currentUser.name),
      emailController = TextEditingController(text: currentUser.email),
      paswwordController = TextEditingController(text: currentUser.password);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/assets/imges/backgroung_img.jpg'),
            radius: 40,
          ),
          SizedBox(height: 30),
          ProfileTextField(
            label: "Name",
            controller: userController,
          ),
          ProfileTextField(label: "Mobile Number"),
          ProfileTextField(
            label: "Email Address",
            controller: userController,
          ),
          ProfileTextField(
            label: "Password",
            icon: Icons.remove_red_eye_outlined,
            controller: userController,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: UpdateButton(),
          ),
        ],
      ),
    );
  }
}
