import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/logo_widget/get_started_buttom.dart';

class LogoPageView extends StatelessWidget {
  const LogoPageView(
      {super.key,
      required this.swipeColorFirst,
      required this.swipeColorSecond,
      required this.swipeColorTheird});

  final Color swipeColorFirst;
  final Color swipeColorSecond;
  final Color swipeColorTheird;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(29, 255, 255, 255),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Universal Timekepers\nof the World",
                style: TextStyle(
                    color: appColorWhite,
                    fontSize: 30,
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.w500),
              ),
              height10,
              const Text(
                "It is a long established fact that a reader will",
                style: TextStyle(color: appColorWhite),
              ),
              height4,
              const Text(
                "be distracted by the readable content.",
                style: TextStyle(color: appColorWhite),
              ),
              height26,
              Row(
                children: [
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: swipeColorFirst, shape: BoxShape.circle),
                  ),
                  width10,
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: swipeColorSecond, shape: BoxShape.circle),
                  ),
                  width10,
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: swipeColorTheird, shape: BoxShape.circle),
                  )
                ],
              ),
              const GetStartedButtom()
            ],
          ),
        )
      ],
    );
  }
}
