import 'dart:math';

import 'package:daoan6/Pages/rating_detail/components/ratingbar.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.rate}) : super(key: key);
  final double rate;
  double doubleInRange(Random source, num start, num end) =>
      source.nextDouble() * (end - start) + start;
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: getProportionateScreenHeight(200),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child:  Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    rate.toString(),
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(50),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Muli-Bold",
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(5, (index) => Icon(Icons.star_border))
                    ],
                  ),
                  Text(
                    "52,200",
                    style: TextStyle(
                        fontFamily: "Moli",
                        fontSize: getProportionateScreenWidth(18)
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(5, (index){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text((index+1).toString(),style: TextStyle(fontSize: getProportionateScreenWidth(18)),),
                      RatingBar(rating: doubleInRange(random, 0, 5),)
                    ],
                  );
                })

              ],
            ),
          )
        ],
      ),
    );
  }
}
