import 'package:flutter/material.dart';
import 'package:shopingpriject/custom_profiletextfield.dart/custom_button.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/models/user_model.dart';
import 'package:shopingpriject/screens/signin_screen.dart';
import 'package:shopingpriject/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailorusernameController = TextEditingController();
  TextEditingController paswwordController = TextEditingController();

  bool isEmailUsed = false;

  void signUp() {
    String name = nameController.text;
    String emailOrUsername = emailorusernameController.text;
    String password = paswwordController.text;

     if (name.isNotEmpty && emailOrUsername.isNotEmpty && password.isNotEmpty) {
      bool emailExists = userList.any((user) => user.email == emailOrUsername);

      if (!emailExists) {
        User newUser = User(name: name, email: emailOrUsername, password: password);
        userList.add(newUser);
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => const SignInScreen(),
          
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email already exists")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 10,
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Positioned(
              bottom: 490,
              left: 250,
              child: Container(
                child: Image.asset(
                  "lib/assets/imges/img2.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    "lib/assets/imges/img 11.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                Text(
                  "Let's Sign up",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Unna",
                    color: Colors.blue[900],
                  ),
                ),
                Text(
                  "Let's sign up to get rewards",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomTextField(
              label: "Username or Email",
              hint: "Enter Username or Email",
              icon: Icons.email_outlined,
              controller: emailorusernameController,
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: "Full Name",
                  hint: "Enter Name Here",
                  icon: Icons.person_2_outlined,
                  controller: nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
              label: "Password",
              hint: "Enter password",
              icon: Icons.remove_red_eye_outlined,
              obscureText: true,
              controller: paswwordController,
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: CustomButton(
              text: "Sign up",
              buttonColor: Colors.amber,
              onPressed: signUp,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Joined us before?"),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
