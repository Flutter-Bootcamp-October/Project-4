import 'package:flutter/material.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/widgets/custom_profiletextfield.dart';
import 'package:shopingpriject/widgets/custom_updatebutton.dart';

<<<<<<< HEAD
class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /* TextEditingController userController =
          TextEditingController(text: currentUser.name),
      emailController = TextEditingController(text: currentUser.email),
      paswwordController = TextEditingController(text: currentUser.password);*/

=======

class ProfileScreen extends StatelessWidget {
>>>>>>> af75baf704b8ba4de0f3beff0787746675d94997
  @override
  Widget build(BuildContext context) {
    print("nameprof:${currentUser.name}");
    TextEditingController userController =
            TextEditingController(text: currentUser.name),
        emailController = TextEditingController(text: currentUser.email),
        paswwordController = TextEditingController(text: currentUser.password);
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
            controller: emailController,
          ),
          ProfileTextField(
            label: "Password",
            icon: Icons.remove_red_eye_outlined,
            controller: paswwordController,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: UpdateButton(),
          ),
        ],
      ),
    );

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Center(child: Text("ProfileScreen"))
    ],),);

  }
}
