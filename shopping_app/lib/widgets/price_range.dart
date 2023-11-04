import 'package:flutter/material.dart';
import 'package:shopping_app/consts/colors.dart';

class PriceRange extends StatefulWidget {
  const PriceRange({super.key});

  @override
  State<PriceRange> createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  RangeValues _currentRangeValues = const RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      max: 10000,
      divisions: 50,
      activeColor: appYellow,
      labels: RangeLabels(
        "\$${_currentRangeValues.start.round().toString()}",
        "\$${_currentRangeValues.end.round().toString()}",
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
