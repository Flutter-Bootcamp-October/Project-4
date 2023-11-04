import 'package:flutter/material.dart';
import 'package:shopping_app/global/colors.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/screens/my_order_screen.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';

class ViewProfuct extends StatefulWidget {
  const ViewProfuct({super.key, required this.prodect});
  final Product prodect;

  @override
  State<ViewProfuct> createState() => _ViewProfuctState();
}

class _ViewProfuctState extends State<ViewProfuct> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: widget.prodect.name,
          actionIcon: Icons.shopping_bag_outlined),
      body: ListView(
        children: [
          Center(child: Image.asset(widget.prodect.image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.prodect.name,
                      style: const TextStyle(
                          color: appBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "\$${widget.prodect.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(children: [
                  InkWell(
                    onTap: () {
                      count++;
                      setState(() {});
                    },
                    child: ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: appYellow,
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "$count",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (count > 1) {
                        count--;
                      }
                      setState(() {});
                    },
                    child: ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: appYellow,
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              widget.prodect.description,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16),
            child: Text(
              "Rating",
              style: TextStyle(
                  color: appBlue, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 8),
              Icon(Icons.star_rounded,
                  color: widget.prodect.rating >= 1.0
                      ? Colors.amber
                      : Colors.grey),
              Icon(Icons.star_rounded,
                  color: widget.prodect.rating >= 2.0
                      ? Colors.amber
                      : Colors.grey),
              Icon(Icons.star_rounded,
                  color: widget.prodect.rating >= 3.0
                      ? Colors.amber
                      : Colors.grey),
              Icon(Icons.star_rounded,
                  color: widget.prodect.rating >= 4.0
                      ? Colors.amber
                      : Colors.grey),
              Icon(Icons.star_rounded,
                  color:
                      widget.prodect.rating == 5.0 ? Colors.amber : Colors.grey)
            ],
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const MyOrderScreen();
          }));
        },
        child: const Text("add"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
