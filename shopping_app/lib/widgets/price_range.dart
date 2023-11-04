import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';

class PriceRange extends StatefulWidget {
  const PriceRange({super.key});

  @override
  State<PriceRange> createState() => _PriceRangeState();
}

RangeValues currentRangeValues = const RangeValues(0, 10000);

class _PriceRangeState extends State<PriceRange> {
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: currentRangeValues,
      max: 10000,
      divisions: 50,
      activeColor: appYellow,
      labels: RangeLabels(
        "\$${currentRangeValues.start.round().toString()}",
        "\$${currentRangeValues.end.round().toString()}",
      ),
      onChanged: (RangeValues values) {
        setState(() {
          currentRangeValues = values;
        });
      },
    );
  }
}
