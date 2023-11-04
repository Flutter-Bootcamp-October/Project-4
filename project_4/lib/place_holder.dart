import 'package:flutter/material.dart';
import 'package:project_4/data/global_data.dart';
import 'package:project_4/data/user_data_set.dart';
import 'package:project_4/models/user_model.dart';
import 'package:project_4/screens/NavigationBar/navigation_bar_widget.dart';

class PlaceHolderScreen extends StatefulWidget {
  const PlaceHolderScreen({Key? key}) : super(key: key);

  @override
  State<PlaceHolderScreen> createState() => _PlaceHolderScreenState();
}

class _PlaceHolderScreenState extends State<PlaceHolderScreen> {
  @override
  void initState() {
    for (var users in usersDataSet) {
      usersList.add(User(
          address: users["address"],
          userAvatar: users["userAvatar"],
          email: users["email"],
          password: users["password"],
          mobileNumber: users["mobileNumber"],
          name: users["name"]));
    }
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(
                usersList.length, (index) => Text("${usersList[index].address![0].values}")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                checkUserInfo(context);
              },
              child: const Text("Press"),
            ),
          ],
        ),
      ),
    );
  }

  void checkUserInfo(BuildContext context) {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Please write your email")));
    } else if (passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Please write your password")));
    } else {
      usersList.map((e) {
        if (emailController.text.trim().toLowerCase() == e.email!.toLowerCase() &&
            passwordController.text.trim().toLowerCase() == e.password!.toLowerCase()) {
          currentUser = e;
          loggedInUsers.add(e);
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => const BottomNavBar()), (route) => false);
        }
      }).toList();
    }
  }
}
