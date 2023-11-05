import 'package:flutter/material.dart';
import 'package:project4/Data/global.dart';
import 'package:project4/widgets/home_widget/display_all_watch.dart';

class WatchView extends StatelessWidget {
  const WatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: listWatch
            .map((item) => DispalyAllWatch(
                  watch: item,
                ))
            .toList(),
      ),
    );
  }
}
