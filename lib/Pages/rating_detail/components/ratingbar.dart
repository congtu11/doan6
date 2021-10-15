import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  RatingBar({required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(10),
      width: getProportionateScreenWidth(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.grey.shade400
      ),
      child: Stack(
        children: [
          Container(
            width: rating*getProportionateScreenWidth(30),
            decoration: const BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(2),bottomLeft: Radius.circular(2))
            ),
          )
        ],
      )
    );
  }

}