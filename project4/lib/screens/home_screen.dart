import 'package:flutter/material.dart';
import 'package:project4/data/globals.dart';
import 'package:project4/data/products_data.dart';
import 'package:project4/models/products_model.dart';
import 'package:project4/styles/custom_color.dart';
import 'package:project4/widget/category_widget.dart';
import 'package:project4/widget/products_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in dataProducts) {
      listProducts.add(Product.fromJson(element));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/image 79.png")),
            Text(
              "ADS Watch",
              style: TextStyle(color: secondary),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.sort,
            color: black,
          ),
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 190, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello"),
                Text("Choose Your Top Brands"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CategoryWidget(),
          ProductWidget(),
        ],
      ),
    );
  }
}
