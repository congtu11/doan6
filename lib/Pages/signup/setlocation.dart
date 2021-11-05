import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/header.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({Key? key}) : super(key: key);

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
                        title: "Set Your Location",
                      ),
                      SizedBox(height: getProportionateScreenHeight(30),),
                      SizedBox(
                        height: getProportionateScreenHeight(147),
                        width: getProportionateScreenWidth(330),
                        child: Container(
                          decoration: lightBoxWithShadow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Row(
                                children: [
                                  SizedBox(width: getProportionateScreenWidth(20),),
                                  const Icon(Icons.location_on_outlined,color: Colors.yellow,),
                                  SizedBox(width: getProportionateScreenWidth(20),),
                                  const Text("Your Location",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),),
                              Expanded(child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                decoration: lightBoxWithShadow,
                                child: const Center(
                                  child: Text("Set Location",style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(250),
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
