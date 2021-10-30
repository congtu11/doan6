import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent(
      {Key? key,
      required this.text,
      required this.image,
      required this.subtext})
      : super(key: key);
  final String text, subtext, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(100),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        Text(
          subtext,
          style: const TextStyle(),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
