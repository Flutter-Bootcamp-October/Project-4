import 'package:flutter/material.dart';
import 'package:shopping_app/global/colors.dart';

class ShowWatch extends StatelessWidget {
  const ShowWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 200,
          height: 295,
        ),
        Positioned(
          top: 60,
          child: Container(
            width: 200,
            height: 210,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Apple Watch",
                    style:
                        TextStyle(color: appBlue, fontWeight: FontWeight.bold)),
                Text("\$2", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 240,
          left: 70,
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 245,
          left: 75,
          child: ClipOval(
            child: Container(
              width: 50,
              height: 50,
              color: appYellow,
              child: const Center(child: Icon(Icons.add)),
            ),
          ),
        ),
        SizedBox(width: 200, child: Image.asset("assets\\watch1.png")),
      ],
    );
  }
}
