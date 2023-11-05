import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/profile_widget/profile_pic.dart';
import 'package:project4/widgets/profile_widget/update_buttom.dart';
import 'package:project4/widgets/text_field_widget.dart';

class ProfileContentWidget extends StatelessWidget {
  const ProfileContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();

    void updateCurrentUser() {
      currentUser.fullName = fullNameController.text;
      currentUser.mobileNumber = phoneNumberController.text;
      currentUser.emailAddress = emailController.text;
      currentUser.password = passwordController.text;

      // Show the Snackbar message after the user data is updated
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User has been updated  :>  '),
          duration: Duration(seconds: 2),
        ),
      );
    }

    return Column(
      children: [
        const ProfilePic(),
        height20,
        TextFieldWidget(
          hintText: 'Enter your full Name',
          labelText: 'Name',
          isObscureText: false,
          initialValue: currentUser.fullName,
          controller: fullNameController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your phone number',
          labelText: 'Mobile Number',
          initialValue: currentUser.mobileNumber,
          isObscureText: false,
          controller: phoneNumberController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your new email',
          labelText: 'Email Address',
          isObscureText: false,
          initialValue: currentUser.emailAddress,
          controller: emailController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your new password',
          labelText: 'Password',
          isObscureText: true,
          initialValue: currentUser.password,
          controller: passwordController,
        ),
        height30,
        UpdateButtom(
          onPressed: () {
            updateCurrentUser();
          },
        )
      ],
    );
  }
}
