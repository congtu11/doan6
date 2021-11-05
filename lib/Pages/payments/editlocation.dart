import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../size_config.dart';
import '../components/header.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({Key? key}) : super(key: key);

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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                    child: Text("Order Location"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: getProportionateScreenWidth(5),
                                        ),
                                        Container(
                                          width: getProportionateScreenWidth(40),
                                          height: getProportionateScreenHeight(40),
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
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(10),),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: getProportionateScreenHeight(135),
                              decoration: lightBoxWithShadow,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                    child: Text("Deliver To"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: getProportionateScreenWidth(5),
                                        ),
                                        Container(
                                          width: getProportionateScreenWidth(40),
                                          height: getProportionateScreenHeight(40),
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
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 55),
                                    child: Text("set location",style: TextStyle(color: kPrimaryColor),),
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
