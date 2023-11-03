import 'package:flutter/material.dart';
import 'package:project4/styles/custom_color.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List list = ["Trending", "Populra", "new", "Best Collection"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return choice(index);
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 18,
          ),
        ),
      ),
    );
  }

  choice(int index) {
    return ChoiceChip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      backgroundColor: Colors.white,
      label: Text(
        list[index],
        style: TextStyle(
            fontSize: 17,
            color: selectedIndex == index ? black : Color(0xffB6B3B3)),
      ),
      selected: selectedIndex == index,
      // avatarBorder:CircleBorder(side: BorderSide())
      // disabledColor: Colors.transparent,
      selectedColor: primary,
      onSelected: (value) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
