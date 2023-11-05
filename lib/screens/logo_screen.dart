import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/logo_widget/logo_page_view.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        body: PageView(
          children: const [
            LogoPageView(
              swipeColorFirst: appColorYellow,
              swipeColorSecond: appColorDarkGrey,
              swipeColorTheird: appColorDarkGrey,
            ),
            LogoPageView(
              swipeColorFirst: appColorDarkGrey,
              swipeColorSecond: appColorYellow,
              swipeColorTheird: appColorDarkGrey,
            ),
            LogoPageView(
              swipeColorFirst: appColorDarkGrey,
              swipeColorSecond: appColorDarkGrey,
              swipeColorTheird: appColorYellow,
            ),
          ],
        ),
      ),
    );
  }
}
