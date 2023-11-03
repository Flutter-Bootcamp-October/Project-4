import 'package:flutter/material.dart';
import 'package:project4/global/global.dart';
import 'package:project4/models/user.dart';
import 'package:project4/screens/login_screen.dart';
import 'package:project4/screens/profile_screen.dart';
import 'package:project4/widegts/add_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    bool isMatched = false;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
              top: 50,
              left: 110,
              child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset("assets/image 1.png"))),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 18),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/logo.png")),
                ),
                const SizedBox(
                  height: 41,
                ),
                const Text(
                  "Let's Sign up",
                  style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 10, 46, 76),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Let's sign up to get reword",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 50,
                ),
                AddTextField(
                  label: 'Username Or Email',
                  hint: 'Enter Username Or Email',
                  isPassword: false,
                  controller: emailController,
                  icon: Icons.mail_outline,
                ),
                const SizedBox(
                  height: 30,
                ),
                AddTextField(
                  label: 'Full Name',
                  hint: 'Enter name here',
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
                          passwordController.text.isNotEmpty) {
                        //dublecate email
                        for (var user in usersList) {
                          if (user.email == emailController.text) {
                            isMatched = true;
                          }
                        }
                        if (!isMatched) {
                          User newUser = User(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              phone: '');

                          usersList.add(newUser);
                          currentUser = newUser;
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                            (route) => false,
                          );
                        } else {
                          isMatched = false;
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Email is used")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
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
                          "Sign up",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 70.0, top: 15, bottom: 40),
                  child: Row(
                    children: [
                      const Text("Joined us before?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: const Text(
                          "  Sign in",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 8, 37, 61),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
