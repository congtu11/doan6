import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/Pages/signup/signup_success.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/header.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({Key? key}) : super(key: key);

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
                        title: "Upload Your Photo\nProfile",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(129),
                        width: getProportionateScreenWidth(325),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 10,
                                    color: Colors.grey.withOpacity(0.05),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child:
                                Image.asset("assets/images/Gallery Icon.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(129),
                        width: getProportionateScreenWidth(325),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 10,
                                    color: Colors.grey.withOpacity(0.05),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Image.asset("assets/images/Camera Icon.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(130),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(330),
                        child: Center(
                          child: DefaultButton(
                              text: "Next",
                              press: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpSuccess()));
                              },
                              height: getProportionateScreenHeight(57),
                              width: getProportionateScreenWidth(157)),
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
  }
}
