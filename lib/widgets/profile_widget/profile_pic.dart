import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: SizedBox(
            height: 140,
            width: 140,
            child: Image.asset(
              "assets/images/users/userimg.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 100,
          top: 20,
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: appColorYellow,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.camera_alt_outlined,
              size: 15,
            ),
          ),
        )
      ],
    );
  }
}
