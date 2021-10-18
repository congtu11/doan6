import 'package:flutter/material.dart';

import '../../size_config.dart';

class ProductCard2 extends StatelessWidget {
  const ProductCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: getProportionateScreenHeight(145),
                  // padding của cả hai bên cộng lại là 16
                  width: 0.3 * (SizeConfig.screenWidth - 16),
                  child: const Padding(
                    padding: EdgeInsets.all(4),
                    child: FlutterLogo(),
                  )),
              SizedBox(
                height: getProportionateScreenHeight(145),
                width: 0.7 * (SizeConfig.screenWidth - 16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FLUTTER LOGO",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(10),),
                      Text(
                        "85 \$",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(15)
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(10),),
                      Row(
                        children: [
                          ...List.generate(5, (index) => Icon(Icons.star_border,size: getProportionateScreenWidth(15),))
                        ],
                      ),
                      SizedBox(height: getProportionateScreenWidth(10),),
                      Text(
                        "45 Sale",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(15)
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(8)),
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenWidth(40),
                child: const Center(
                  child: Icon(Icons.delete),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
        ],
      ),
    );
  }
}
