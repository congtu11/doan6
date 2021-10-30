import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/header.dart';

class UploadPreview extends StatelessWidget {
  const UploadPreview({Key? key}) : super(key: key);

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
                      SizedBox(height: getProportionateScreenHeight(30),),
                      SizedBox(
                        height: getProportionateScreenHeight(200),
                        width: getProportionateScreenWidth(330),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0.0,
                              child: Container(
                                height: getProportionateScreenHeight(200),
                                width: getProportionateScreenWidth(330),
                                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                                child: ClipRRect(child: Image.asset("assets/images/avatar1.png",fit: BoxFit.cover,),borderRadius: BorderRadius.circular(20),),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: getProportionateScreenWidth(40),
                              child: InkWell(
                                child: Ink(
                                  height: getProportionateScreenWidth(30),
                                  width: getProportionateScreenWidth(30),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.cancel,color: Colors.white,),
                                  ),
                                ),
                              ),
                            )
                          ],
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
                              press: () {},
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
