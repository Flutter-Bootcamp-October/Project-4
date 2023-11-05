import 'package:flutter/material.dart';
import 'package:wach_store_app/widgets/item_card.dart';

class TopBrandsCard extends StatelessWidget {
  const TopBrandsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            name: 'Cartier Skeleton',
            price: 4250,
            src: 'lib/assets/images/watch-2.png',
          ),
          ItemCard(
            name: 'Apple Watch',
            price: 2500,
            src: 'lib/assets/images/watch-5.png',
          ),
          ItemCard(
            name: 'Michael Kors',
            price: 2000,
            src: 'lib/assets/images/watch-6.png',
          ),
          ItemCard(
            name: 'Michael Kors',
            price: 2000,
            src: 'lib/assets/images/watch-7.png',
          ),
        ],
      ),
    );
  }
}
