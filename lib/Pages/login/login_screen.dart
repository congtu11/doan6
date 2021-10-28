import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: Container(
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
              ),
              Positioned(
                top: 0.0,
                child: Container(
                    // width: SizeConfig.screenWidth,
                    // height: SizeConfig.screenHeight,
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    Text(
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
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.05),
                                        spreadRadius: 10,
                                        blurRadius: 10,
                                        // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
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
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.05),
                                        spreadRadius: 10,
                                        blurRadius: 10,
                                        // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.google,
                                        color: Colors.red.shade500,
                                      ),
                                      Text("Google")
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
                    Text(
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
                      press: () {},
                    ),
                  ],
                )),
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
