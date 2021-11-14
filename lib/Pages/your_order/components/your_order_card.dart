import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class YourOrderCard extends StatelessWidget {
  const YourOrderCard({Key? key,required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: getProportionateScreenHeight(103),
      decoration: lightBoxWithShadow,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(image),
            ),
            flex: 1,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Spacy fresh crab",style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.bold
                ),),
                Text("Waroenk kita",style: TextStyle(
                    color: Colors.grey.withOpacity(0.8)
                ),),
                Text("\$ 35",style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(18)
                ),)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                height: getProportionateScreenHeight(30),
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Process",style: TextStyle(color: Colors.white),)),
              ),
            ),

          ),
          SizedBox(width: getProportionateScreenWidth(10),)
        ],
      ),
    );
  }
}
