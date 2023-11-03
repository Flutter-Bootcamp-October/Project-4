import 'package:flutter/material.dart';
import 'package:project4/global/global.dart';
import 'package:project4/screens/profile_screen.dart';
import 'package:project4/screens/signup_screen.dart';
import 'package:project4/widegts/add_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
                  "Let's Sign in",
                  style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 10, 46, 76),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Fill the details below to continue.",
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
                  label: 'Password',
                  hint: 'Enter Password',
                  isPassword: true,
                  controller: passwordController,
                  icon: Icons.remove_red_eye_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 195.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 8, 37, 61)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    onTap: () {
                      for (var user in usersList) {
                        if (user.email == emailController.text &&
                            user.password == passwordController.text) {
                          currentUser = user;

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                            (route) => false,
                          );
                          return;
                        }
                      }
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Email or Password are incorrect")));
                    },
                    child: Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xfffcc873)),
                      child: const Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0, left: 160),
                  child: Text("OR"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffF9F8F8)),
                    child: const Center(
                      child: Text(
                        "Sign in with google",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, top: 15),
                  child: Row(
                    children: [
                      const Text("New to ADS Watch?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          "  Sign up",
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
