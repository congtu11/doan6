import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/signup_process_screen.dart';
import 'package:daoan6/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../size_config.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Stack(
              children: [
                Positioned(
                  top: 0.0,
                  child: ClipPath(
                    clipper: CustClipper(),
                    child: Image.asset(
                      "assets/images/Pattern.png",
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    "Sign Up For Free",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(20)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(57),
                    width: SizeConfig.screenWidth,
                    child: buildEmail(),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(12),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(57),
                    width: SizeConfig.screenWidth,
                    child: buildPassword(),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(12),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(57),
                    width: SizeConfig.screenWidth,
                    child: buildPassword(),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(19),
                  ),
                  Container(
                    height: getProportionateScreenHeight(56),
                    width: SizeConfig.screenWidth,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(25)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: buildCheckbox(),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(12),
                        ),
                        Expanded(
                          child: buildCheckbox(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(43),
                  ),
                  DefaultButton(
                    text: "Create Account",
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpProcess()));
                    },
                    height: getProportionateScreenHeight(57),
                    width: getProportionateScreenWidth(175),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  const Text(
                    "already have an account?",
                    style: TextStyle(
                        color: kPrimaryColor,
                        decoration: TextDecoration.underline),
                  )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 10,
            blurRadius: 10,
            // changes position of shadow
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black12),
              border: InputBorder.none,
              prefixIcon: Icon(
                FontAwesomeIcons.user,
                color: kPrimaryColor,
              )),
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            // changes position of shadow
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black12),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              )),
        ),
      ),
    );
  }
  Widget buildCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          checkColor: Colors.white,
          activeColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20)),
        ),
        const Text("Keep Me Signed In")
      ],
    );
  }
}

class CustClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustClipper oldClipper) => false;
}
