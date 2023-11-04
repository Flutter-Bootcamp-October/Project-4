import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/my_order_screen.dart';
import 'package:shopping_app/screens/profile_screen.dart';
import 'package:shopping_app/screens/search_screen.dart';

class AppBottonNabBar extends StatefulWidget {
  const AppBottonNabBar({super.key});

  @override
  State<AppBottonNabBar> createState() => _AppBottonNabBarState();
}

class _AppBottonNabBarState extends State<AppBottonNabBar> {
  List<Widget> screensList = [
    const HomeScreen(),
    const SearchScreen(),
    const MyOrderScreen(),
    const ProfileScreen()
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: selected,
        onTap: (index) {
          selected = index;
          setState(() {});
        },
        borderRadius: 20,
        backgroundColor: appYellow,
        dotIndicatorColor: appBlue,
        selectedItemColor: appBlue,
        items: [
          DotNavigationBarItem(icon: const Icon(Icons.home_filled)),
          DotNavigationBarItem(icon: const Icon(Icons.search)),
          DotNavigationBarItem(icon: const Icon(Icons.shopping_bag_outlined)),
          DotNavigationBarItem(icon: const Icon(Icons.person_outline_rounded)),
        ],
      ),
      body: screensList[selected],
    );
  }
}
