import 'package:flutter/material.dart';
import 'package:shopping_app/global/colors.dart';

class ShowOrder extends StatelessWidget {
  const ShowOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: Image.asset("assets\\watch1.png"),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Text(
              "name",
              style: TextStyle(
                  color: appBlue, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "discribtion",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Text(
              "\$price",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(width: 32),
        Column(
          children: [
            const SizedBox(height: 16),
            ClipOval(
              child: Container(
                width: 30,
                height: 30,
                color: appYellow,
                child: const Icon(Icons.add),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "1",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ClipOval(
              child: Container(
                width: 30,
                height: 30,
                color: appYellow,
                child: const Icon(Icons.remove),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
