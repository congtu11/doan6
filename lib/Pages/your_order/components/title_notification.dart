import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BuildTitleBar extends StatelessWidget {
  const BuildTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Find Your\nFavorite Food",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(25)),
        ),
        Container(
          width: getProportionateScreenWidth(60),
          height: getProportionateScreenWidth(60),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFAFDFF)
          ),
          child: Stack(
            children: [
              Center(child: Icon(Icons.notifications_none,size: getProportionateScreenWidth(30),color: kPrimaryColor,)),
              Positioned(
                right: getProportionateScreenWidth(18),
                top: getProportionateScreenWidth(15),
                child: Container(
                  width: getProportionateScreenWidth(8),
                  height: getProportionateScreenHeight(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getProportionateScreenWidth(4)),
                      color: Colors.red
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
