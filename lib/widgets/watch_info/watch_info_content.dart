import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/watch_info/description_watch.dart';
import 'package:project4/widgets/watch_info/more_description_watch.dart';
import 'package:project4/widgets/watch_info/watch_info_and_count.dart';
import 'package:project4/widgets/watch_info/watch_pic.dart';

class WatchInfoContent extends StatelessWidget {
  const WatchInfoContent({super.key, required this.watch});
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WatchPic(watch: watch),
        height20,
        WatchInfoAndCount(watch: watch),
        height20,
        DescriptionWatch(watch: watch),
        height20,
        MoreDescriptionWatch(watch: watch),
        height20,
        DescriptionWatch(watch: watch),
        height20,
        DescriptionWatch(watch: watch),
        height20,
        DescriptionWatch(watch: watch),
        height20,
        DescriptionWatch(watch: watch),
      ],
    );
  }
}
