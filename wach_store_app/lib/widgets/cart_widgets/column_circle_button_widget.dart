import 'package:flutter/material.dart';

class ColumnCircleButton extends StatefulWidget {
  const ColumnCircleButton({super.key});

  @override
  State<ColumnCircleButton> createState() => _ColumnCircleButtonState();
}

class _ColumnCircleButtonState extends State<ColumnCircleButton> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 4,
        ),
        Text(
          '$amount',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 4,
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
