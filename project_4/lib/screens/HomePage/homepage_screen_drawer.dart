import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:project_4/screens/HomePage/homepage_screen.dart';

class HomePageScreenDrawer extends StatefulWidget {
  const HomePageScreenDrawer({super.key});

  @override
  State<HomePageScreenDrawer> createState() => _HomePageScreenDrawerState();
}

final advancedDrawerController = AdvancedDrawerController();

class _HomePageScreenDrawerState extends State<HomePageScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advancedDrawerController,
      openRatio: 0.35,
      openScale: 0.8,
      drawer: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Profile page",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Profile page", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 8,
              ),
              Text("Profile page", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 8,
              ),
              Text("Log Out",
                  style: TextStyle(
                      color: Color(0xFFDA9E3F),
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
      child: const HomePageScreen(),
    );
  }
}
