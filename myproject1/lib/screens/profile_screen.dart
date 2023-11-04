import 'package:flutter/material.dart';
import 'package:shopingpriject/widgets/custom_profiletextfield.dart';
import 'package:shopingpriject/widgets/custom_updatebutton.dart';


class ProfileScreen extends StatelessWidget {
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
          ProfileTextField(label: "Name"),
          ProfileTextField(label: "Mobile Number"),
          ProfileTextField(label: "Email Address"),
          ProfileTextField(
            label: "Password",
            icon: Icons.remove_red_eye_outlined,
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
