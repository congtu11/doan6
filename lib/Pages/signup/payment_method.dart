import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/components/header.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/Pages/signup/upload_photo.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';


class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

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
                      horizontal: getProportionateScreenWidth(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(38),
                      ),
                      const HeaderSignUp(
                        title: "Payment Method",
                      ),
                      buildPayment(payment: "assets/images/paypal.png"),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      buildPayment(payment: "assets/images/visa.png"),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      buildPayment(payment: "assets/images/payoneer_logo.png"),
                      SizedBox(
                        height: getProportionateScreenHeight(150),
                      ),
                      SizedBox(
                          width: getProportionateScreenWidth(350),
                          child: Center(
                              child: DefaultButton(
                                  text: "Next",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) => const UploadPhoto()));
                                  },
                                  height: getProportionateScreenHeight(57),
                                  width: getProportionateScreenWidth(157)))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPayment({String? payment}) {
    return Container(
      height: getProportionateScreenHeight(73),
      width: getProportionateScreenWidth(330),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 10,
              blurRadius: 10,
            )
          ]
      ),
      child: Center(
        child: Image.asset(payment!,),
      ),
    );
  }
}
