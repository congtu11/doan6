import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/Pages/signup/signup_screen.dart';
import 'package:daoan6/constants.dart';
import 'package:daoan6/size_config.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_in";

  final _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: ClipPath(
                  clipper: TriangleClipper(),
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
                  "Login To Your Account",
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
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(25)),
                    decoration: lightBoxWithBorder,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(12),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(57),
                  width: SizeConfig.screenWidth,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
                    decoration: lightBoxWithBorder,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black12),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const Text(
                  "Or Continue With",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                  width: SizeConfig.screenWidth,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: getProportionateScreenWidth(21/2)),
                            decoration: lightBoxWithBorder,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue,
                                  ),
                                  Text("Facebook")
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: getProportionateScreenWidth(21/2)),
                            decoration: lightBoxWithBorder,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red.shade500,
                                  ),
                                  const Text("Google")
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Expanded(child: )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                      color: Color(0xFF53E88B),
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                DefaultButton(
                  text: "Login",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpScreen()));
                  },
                  height: getProportionateScreenHeight(57),
                  width: getProportionateScreenWidth(141),
                ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
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
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
