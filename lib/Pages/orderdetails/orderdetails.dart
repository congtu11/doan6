import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/orderdetails/components/bottom_card.dart';
import 'package:daoan6/Pages/orderdetails/components/order_card.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../size_config.dart';
import '../components/header.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key? key}) : super(key: key);



  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  List<String> imageOrder = [
    "assets/images/order1.png",
    "assets/images/order2.png",
    "assets/images/order3.png"
  ];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print(imageOrder.length.toString());
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
                        title: "Order Details",
                        subtext: "",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(349),
                        width: getProportionateScreenWidth(330),
                        child: ListView.builder(
                          itemCount: imageOrder.length,
                          itemBuilder: (BuildContext context, int index) {
                            return OrderCard(image: imageOrder[index], press: (DismissDirection direction) {setState(() {
                              imageOrder.removeAt(index);
                            });});
                          },
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(50),),
                      BottomCard()
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
