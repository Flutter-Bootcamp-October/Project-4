import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/check_out_screen.dart';

class CheckOutButtom extends StatelessWidget {
  const CheckOutButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (builder) {
            return const CheckOutScreen();
          }));
        },
        child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: appColorYellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: appColorBlue,
                  size: 20,
                ),
                width8,
                Center(
                    child: Text(
                  "Check Out",
                  style: TextStyle(fontSize: 15, color: appColorBlue),
                )),
              ],
            )),
      ),
    );
  }
}
