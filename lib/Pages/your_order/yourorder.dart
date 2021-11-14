import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/Pages/your_order/components/search_bar.dart';
import 'package:daoan6/Pages/your_order/components/title_notification.dart';
import 'package:daoan6/Pages/your_order/components/your_order_card.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../size_config.dart';
import '../components/header.dart';

class YourOrder extends StatefulWidget {
  YourOrder({Key? key}) : super(key: key);



  @override
  State<YourOrder> createState() => _YourOrderState();
}

class _YourOrderState extends State<YourOrder> {

  List<String> imageOrder = [
    "assets/images/order1.png",
    "assets/images/order2.png",
    "assets/images/order3.png"
  ];

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
                      SizedBox(
                        height: getProportionateScreenHeight(58),
                      ),
                      // Title
                      SizedBox(
                        width: getProportionateScreenWidth(330),
                        child: BuildTitleBar(),
                      ),
                      SizedBox(height: getProportionateScreenHeight(18),),
                      SizedBox(
                        height: getProportionateScreenHeight(50),
                        width: getProportionateScreenWidth(330),
                        child: SearchBar(),
                      ),
                      SizedBox(height: getProportionateScreenHeight(18),),
                      SizedBox(
                        height: getProportionateScreenHeight(462),
                        width: getProportionateScreenWidth(330),
                        child: ListView.builder(
                          itemCount: imageOrder.length,
                          itemBuilder: (BuildContext context, int index) {
                            return YourOrderCard(image: imageOrder[index]);
                          },
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(18),),
                      DefaultButton(text: "Check out", press: (){}, height: getProportionateScreenHeight(57), width: getProportionateScreenWidth(330))

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
