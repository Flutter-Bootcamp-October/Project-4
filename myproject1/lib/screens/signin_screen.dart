import 'package:flutter/material.dart';
import 'package:shopingpriject/custom_profiletextfield.dart/custom_button.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/models/product_model.dart';
import 'package:shopingpriject/models/user_items.dart';
import 'package:shopingpriject/models/user_model.dart';
import 'package:shopingpriject/screens/nav_bar.dart';
import 'package:shopingpriject/screens/signup_Screen.dart';
import 'package:shopingpriject/widgets/custom_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailorusernameController = TextEditingController();
  TextEditingController paswwordController = TextEditingController();



  void signIn() {
    String usernameOrEmail = emailorusernameController.text;
    String password = paswwordController.text;

    bool isSignInSuccessful = false;
 
  

    for (var user in userList) {
      if ((user.email == usernameOrEmail || user.name == usernameOrEmail) &&
          user.password == password) {
        currentUser = user;
        isSignInSuccessful = true;
       
        break;
      }
    }

    if (isSignInSuccessful) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Sign-in Successful'),
            content: Text('You have successfully signed in!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid credentials")),
      );
    }
  }
void addToBasket(Product product) {
    currentUser.basket.add(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                  "Let's Sign in",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Unna",
                    color: Colors.blue[900],
                  ),
                ),
                Text(
                  "Fill the details below to continue.",
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
                  label: "Password",
                  hint: "Enter password",
                  icon: Icons.remove_red_eye_outlined,
                  obscureText: true,
                  controller: paswwordController,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: CustomButton(
                      text: "Sign in",
                      buttonColor: Colors.amber,
                      onPressed: signIn),
                ),
                SizedBox(height: 10),
                Align(alignment: Alignment.bottomCenter, child: Text("OR")),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomButton(
                    text: "Sign in with Google",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    buttonColor: Color.fromARGB(255, 248, 246, 246),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New to ADS Watch?"),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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

