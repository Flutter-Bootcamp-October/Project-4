import 'package:bootcamp_project_4/components/brand_card.dart';
import 'package:flutter/material.dart';

class SearchByBrand extends StatelessWidget {
  const SearchByBrand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BrandCard(src: 'lib/assets/images/rolex.png'),
          SizedBox(width: 24),
          BrandCard(src: 'lib/assets/images/cartier.png'),
          SizedBox(width: 24),
          BrandCard(src: 'lib/assets/images/omega.png'),
        ],
      ),
    );
  }
}
