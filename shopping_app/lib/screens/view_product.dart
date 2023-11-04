import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/models/product_model.dart';

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          widget.prodect.name,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 8)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
                      if (count > 0) {
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
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.prodect.description,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Rating",
              style: TextStyle(
                  color: appBlue, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
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
    );
  }
}
