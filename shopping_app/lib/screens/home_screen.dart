import 'package:flutter/material.dart';
import 'package:shopping_app/global/colors.dart';
import 'package:shopping_app/widgets/show_watch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.menu_rounded, color: Colors.black),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.watch_rounded, color: appBlue),
              Text(
                "ADS Watch",
                style: TextStyle(color: appBlue),
              )
            ],
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.filter_list_rounded,
              color: Colors.black,
            ),
            SizedBox(width: 8)
          ],
        ),
        body: ListView(
          children: [
            const Text(
              "Hello",
              style: TextStyle(
                  color: appBlue, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("Chose your top Brands",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TabBar(
              padding: const EdgeInsets.all(8),
              labelPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                  color: appYellow, borderRadius: BorderRadius.circular(16)),
              tabs: const [
                Text("Trending"),
                Text("Popular"),
                Text("New"),
                Text("BestCollection"),
              ],
            ),
            const ShowWatch(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Top deals"), Text("View more")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
