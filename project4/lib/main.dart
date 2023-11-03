import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:project4/screens/cart_screen.dart';
import 'package:project4/screens/home_screen.dart';
import 'package:project4/screens/profile_screen.dart';
import 'package:project4/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      borderRadius: 20,
      resizeToAvoidBottomInset: false,
      color: Color(0xffFBCC7F),
      selectedIconColor: Color(0xff233B67),
      unselectedIconColor: Colors.black,
      items: [
        FloatingNavBarItem(
            iconData: Icons.home_outlined, page: HomeScreen(), title: ''),
        FloatingNavBarItem(
            iconData: Icons.search, page: SearchScreen(), title: ''),
        FloatingNavBarItem(
            iconData: Icons.shopping_bag_outlined,
            page: CartScreen(),
            title: ''),
        FloatingNavBarItem(
            iconData: Icons.person_outline_outlined,
            page: ProfileScreen(),
            title: ''),
      ],
      horizontalPadding: 15.0,
      hapticFeedback: true,
      showTitle: false,
    );
  }
}
