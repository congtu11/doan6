import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../size_config.dart';
import '../components/header.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              const TopBackground(),
              Positioned(
                top: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderSignUp(
                        title: "Comfirm Order",
                        subtext: "",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(349),
                        width: getProportionateScreenWidth(330),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: getProportionateScreenHeight(103),
                              decoration: lightBoxWithShadow,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Deliver To",
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Edit",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(5),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(40),
                                        height:
                                            getProportionateScreenHeight(40),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.yellow),
                                        child: Center(
                                            child: Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.deepOrange,
                                        )),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "4517 Washington Ave.Manchester, Kentucky 39453",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(10),),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: getProportionateScreenHeight(103),
                              decoration: lightBoxWithShadow,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Payment Method",
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Edit",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(20),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(80),
                                        height: getProportionateScreenHeight(50),
                                        
                                        child: Center(
                                            child: Image.asset("assets/images/paypal.png")
                                        ),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(60),
                                      ),
                                      Expanded(
                                          child: Text(
                                            "2121 6352 8465 ****",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(50),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(330),
                        height: getProportionateScreenHeight(210),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                colors: [Color(0xFF15BE77), Color(0xFF53E8B8)]),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  "assets/images/BACKGROUND 2.png",
                                  colorBlendMode: BlendMode.dstATop,
                                  color: Colors.grey.withOpacity(0.2),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              Positioned(
                                top: 0.0,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      ...List.generate(
                                          3,
                                          (index) => Row(
                                                children: [
                                                  Text(
                                                    "Sub-Total",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        getProportionateScreenWidth(
                                                            150),
                                                  ),
                                                  Text(
                                                    "120 \$",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              )),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(10),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Sub-Total",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            width: getProportionateScreenWidth(
                                                150),
                                          ),
                                          Text(
                                            "120 \$",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(20),
                                      ),
                                      Container(
                                        height:
                                            getProportionateScreenHeight(57),
                                        width: getProportionateScreenWidth(300),
                                        decoration: lightBoxWithShadow,
                                        child: Center(
                                          child: Text(
                                            "Place My Order",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
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
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
