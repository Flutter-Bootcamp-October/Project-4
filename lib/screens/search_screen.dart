import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/search_widget/hint_text_search_screen.dart';
import 'package:project4/widgets/search_widget/search_textfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        body: Column(
          children: [
            SearchTextfield(),
            HintTextSearchscreen(),
          ],
        ),
      ),
    );
  }
}
