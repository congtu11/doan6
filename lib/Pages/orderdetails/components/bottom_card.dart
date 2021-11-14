import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(330),
      height: getProportionateScreenHeight(210),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xFF15BE77),
                Color(0xFF53E8B8)
              ]
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(child: Image.asset("assets/images/BACKGROUND 2.png",colorBlendMode: BlendMode.dstATop,color: Colors.grey.withOpacity(0.2),fit: BoxFit.fill,),borderRadius: BorderRadius.circular(20),),
            Positioned(
              top: 0.0,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ...List.generate(3, (index) => Row(
                      children: [
                        Text("Sub-Total",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(width: getProportionateScreenWidth(150),),
                        Text("120 \$",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    )),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    Row(
                      children: [
                        Text("Sub-Total",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(width: getProportionateScreenWidth(150),),
                        Text("120 \$",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Container(
                      height: getProportionateScreenHeight(57),
                      width: getProportionateScreenWidth(300),
                      decoration: lightBoxWithShadow,
                      child: Center(
                        child: Text(
                          "Place My Order",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),

                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
