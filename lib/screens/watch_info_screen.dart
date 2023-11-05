import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/watch_info/add_card_buttom.dart';
import 'package:project4/widgets/watch_info/app_bar_watch_info_screen.dart';
import 'package:project4/widgets/watch_info/watch_info_content.dart';

class WatchInfoScreen extends StatelessWidget {
  WatchInfoScreen({Key? key, required this.watch}) : super(key: key);
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        appBar: AppBarWatchInfoScreen(context, watch),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                ListView(
                  children: [WatchInfoContent(watch: watch)],
                ),
                AddCardButtom(product: watch),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
