import 'package:daoan6/Pages/home/components/carousel.dart';
import 'package:daoan6/Pages/home/components/recommend_product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';

import 'popular_product.dart';
import 'special_offers.dart';
import 'dart:async';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Carousel(),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            RecommendProduct()
          ],
        ),
      ),
    );
  }
}
