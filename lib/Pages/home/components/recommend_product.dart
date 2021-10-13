import 'package:daoan6/Pages/components/product_card.dart';
import 'package:daoan6/Pages/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:daoan6/models/product.dart';
import '../../../size_config.dart';

class RecommendProduct extends StatelessWidget {
  const RecommendProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Recommend Product", press: () {}),
        ),
        SizedBox(
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 10,right: 20),
              shrinkWrap: true,
            children: [
              ...List.generate(demoProducts.length, (index) {
                return ProductCard(product: demoProducts[index]);
              }
              )
            ],
          ),
        )
      ],
    );
  }

}