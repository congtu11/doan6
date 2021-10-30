import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/components/text_input_field.dart';
import 'package:daoan6/Pages/signup/components/top_background.dart';
import 'package:daoan6/Pages/signup/payment_method.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';


class SignUpProcess extends StatelessWidget {
  const SignUpProcess({Key? key}) : super(key: key);

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
              buildFormField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFormField(BuildContext context) {
    return Positioned(
      top: 0.0,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(38),
            ),
            Container(
              width: getProportionateScreenWidth(45),
              height: getProportionateScreenHeight(45),
              decoration: BoxDecoration(
                  color: const Color(0xFFF9A84D),
                  borderRadius: BorderRadius.circular(15)),
              child: const BackButton(
                color: Color(0xFFDA6317),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              "Fill in your bio to get \nstarted",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(25)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(19),
            ),
            Text(
              "This data will be displayed in your account\nprofile for security",
              style: TextStyle(fontSize: getProportionateScreenWidth(12)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              height: getProportionateScreenHeight(61),
              width: getProportionateScreenWidth(330),
              child: const TextInputField(
                hintText: "First Name",
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              height: getProportionateScreenHeight(61),
              width: getProportionateScreenWidth(330),
              child: const TextInputField(
                hintText: "Last Name",
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              height: getProportionateScreenHeight(61),
              width: getProportionateScreenWidth(330),
              child: const TextInputField(
                hintText: "Mobile Number",
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(220),
            ),
            SizedBox(
                width: SizeConfig.screenWidth - 20,
                child: Center(
                    child: DefaultButton(
                        text: "Next",
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const PaymentMethod()));
                        },
                        height: getProportionateScreenHeight(57),
                        width: getProportionateScreenWidth(157))))
          ],
        ),
      ),
    );
  }
}
