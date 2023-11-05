import 'package:bootcamp_project_4/components/category.dart';
import 'package:bootcamp_project_4/components/choose_top_brands.dart';
import 'package:bootcamp_project_4/components/custom_appbar_with_image.dart';
import 'package:bootcamp_project_4/components/featured_product_card.dart';
import 'package:bootcamp_project_4/components/blue_bold_text.dart';
import 'package:bootcamp_project_4/components/home_division.dart';
import 'package:bootcamp_project_4/components/search_by_brand.dart';
import 'package:bootcamp_project_4/components/top_brands_card.dart';
import 'package:bootcamp_project_4/components/top_deal_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefeff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64),
              CustomAppBarWithImage(),
              SizedBox(height: 24),
              BlueBoldText(
                text: 'Hello',
                size: 40,
              ),
              ChooseTopBrands(),
              SizedBox(height: 40),
              Category(),
              SizedBox(height: 32),
              TopBrandsCard(),
              SizedBox(height: 40),
              HomeDivision(title: 'Top Deals'),
              SizedBox(height: 24),
              TopDealCard(),
              SizedBox(height: 40),
              HomeDivision(title: 'Search By Brand'),
              SizedBox(height: 24),
              SearchByBrand(),
              SizedBox(height: 40),
              HomeDivision(title: 'Featured Products'),
              Row(
                children: [
                  FeaturedProductCard(
                    name: 'Michael Kors',
                    price: 2000,
                    src: 'lib/assets/images/watch-7.png',
                  ),
                  FeaturedProductCard(
                    name: 'Michael Kors',
                    price: 2000,
                    src: 'lib/assets/images/watch-3.png',
                  ),
                ],
              ),
              Row(
                children: [
                  FeaturedProductCard(
                    name: 'Michael Kors',
                    price: 2000,
                    src: 'lib/assets/images/watch-7.png',
                  ),
                  FeaturedProductCard(
                    name: 'Michael Kors',
                    price: 2000,
                    src: 'lib/assets/images/watch-1.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
