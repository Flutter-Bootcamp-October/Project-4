import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/sort_filter_widget/app_bar_sort_filter_screen.dart';
import 'package:project4/widgets/sort_filter_widget/pic_watch_sort_screen.dart';
import 'package:project4/widgets/sort_filter_widget/watch_info_sort_screen.dart';

class FilterSortScreen extends StatelessWidget {
  const FilterSortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        appBar: AppBarSortFilterScreen(context),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PicWatchSortScreen(),
                    WatchInfoSortScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
