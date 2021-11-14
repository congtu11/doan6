import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../size_config.dart';
import '../components/header.dart';

class EditPayments extends StatelessWidget {
  const EditPayments({Key? key}) : super(key: key);

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
                              height: getProportionateScreenHeight(73),
                              decoration: lightBoxWithShadow,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(20),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(80),
                                        height: getProportionateScreenHeight(73),
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
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: getProportionateScreenHeight(73),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(20),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(80),
                                        height: getProportionateScreenHeight(73),
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
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: getProportionateScreenHeight(73),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(20),
                                      ),
                                      Container(
                                        width: getProportionateScreenWidth(80),
                                        height: getProportionateScreenHeight(73),
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
                            ),
                          ],
                        ),
                      ),

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
