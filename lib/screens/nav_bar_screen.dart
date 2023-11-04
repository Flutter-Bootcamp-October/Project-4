import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/home_screen.dart';
import 'package:project4/screens/order_screen.dart';
import 'package:project4/screens/profile_screen.dart';
import 'package:project4/screens/search_screen.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> with TickerProviderStateMixin {
  List<Widget> listScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const OrderScreen(),
    const ProfileScreen(),
  ];

  int index = 0;

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 300),
    );
    return Scaffold(
      backgroundColor: appColorWhite,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: listScreen[_SelectedTab.values.indexOf(_selectedTab)],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: DotNavigationBar(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: const Color(0xff273a67),
          unselectedItemColor: const Color(0xff10141d),
          splashBorderRadius: 50,
          backgroundColor: const Color(0xfff8ce81),
          //nableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              selectedColor: const Color(0xff273a67),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.search_rounded),
              selectedColor: const Color(0xff273a67),
            ),

            /// Order
            DotNavigationBarItem(
              icon: const Icon(Icons.shopping_bag_outlined),
              selectedColor: const Color(0xff273a67),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person_2_outlined),
              selectedColor: const Color(0xff273a67),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
