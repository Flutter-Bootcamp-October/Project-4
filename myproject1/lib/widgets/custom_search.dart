import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String text; // Make the text a required parameter

  SearchWidget({
    Key? key,
    required this.text, // Declare text as a required parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Icon(Icons.replay_10_outlined),
          SizedBox(
            width: 10,
          ),
          Text(
            text, // Use the text parameter here
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
