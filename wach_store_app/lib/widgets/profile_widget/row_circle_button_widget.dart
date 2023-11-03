import 'package:flutter/material.dart';

class RowCircleButton extends StatefulWidget {
  const RowCircleButton({super.key});

  @override
  State<RowCircleButton> createState() => _RowCircleButtonState();
}

class _RowCircleButtonState extends State<RowCircleButton> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Color(0xfffbcf7a),
              borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            child: const Icon(Icons.remove),
            onTap: () {
              setState(() {
                if (amount > 1) {
                  amount--;
                }
              });
            },
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '$amount',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Color(0xfffbcf7a),
              borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            child: const Icon(
              Icons.add,
            ),
            onTap: () {
              amount++;
            },
          ),
        )
      ],
    );
  }
}
