import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/global/global.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/widgets/button_widget.dart';
import 'package:shopping_app/widgets/filter_criteria.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';
import 'package:shopping_app/widgets/price_range.dart';
import 'package:shopping_app/widgets/show_watch.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int categorySelected = 0;
  int sortWaySelected = 0;
  bool isVisable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          title: "Filter",
          actionIcon: Icons.close_rounded),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Wrap(spacing: 8, runSpacing: 8, children: [
              InkWell(
                onTap: () {
                  categorySelected = 0;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "All Watches",
                  isSelected: categorySelected == 0,
                ),
              ),
              InkWell(
                onTap: () {
                  categorySelected = 1;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Metallic",
                  isSelected: categorySelected == 1,
                ),
              ),
              InkWell(
                onTap: () {
                  categorySelected = 2;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Leather",
                  isSelected: categorySelected == 2,
                ),
              ),
              InkWell(
                onTap: () {
                  categorySelected = 3;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Expensive",
                  isSelected: categorySelected == 3,
                ),
              ),
              InkWell(
                onTap: () {
                  categorySelected = 4;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Classic",
                  isSelected: categorySelected == 4,
                ),
              ),
            ]),
            const SizedBox(height: 15),
            const Text("Sort Watches By",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Wrap(spacing: 8, runSpacing: 8, children: [
              InkWell(
                onTap: () {
                  sortWaySelected = 0;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Price",
                  isSelected: sortWaySelected == 0,
                ),
              ),
              InkWell(
                onTap: () {
                  sortWaySelected = 1;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Rating",
                  isSelected: sortWaySelected == 1,
                ),
              ),
              InkWell(
                onTap: () {
                  sortWaySelected = 2;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Pupularity",
                  isSelected: sortWaySelected == 2,
                ),
              ),
              InkWell(
                onTap: () {
                  sortWaySelected = 3;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Top selling",
                  isSelected: sortWaySelected == 3,
                ),
              ),
              InkWell(
                onTap: () {
                  sortWaySelected = 4;
                  setState(() {});
                },
                child: FilterCriteria(
                  text: "Deals & Discounts",
                  isSelected: sortWaySelected == 4,
                ),
              )
            ]),
            const SizedBox(height: 8),
            const Text("Select Price Range",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const PriceRange(),
            Visibility(
              visible: isVisable,
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      List<Product> filteredProduct = [];
                      return ShowWatch(product: productList[index]);
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonCustom(
          buttonColor: appYellow,
          buttonChild: const Text("Apply"),
          onPressed: () {
            isVisable = true;
            setState(() {});
          },
          radius: 20),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
