import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/size_config.dart';

import 'package:flutter/material.dart';



class SignUpSuccess extends StatelessWidget {
  static String routeName = "/sign_in";

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  SignUpSuccess({Key? key}) : super(key: key);

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
                child: SizedBox(
                  width: getProportionateScreenWidth(375),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(180),),
                      Image.asset("assets/images/success.png"),
                      SizedBox(height: getProportionateScreenHeight(33),),
                      Text("Congrats!",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(30),
                        color: const Color(0xFF53E88B)
                      ),),
                      SizedBox(height: getProportionateScreenHeight(12),),
                      Text("Your Profile Is Ready To Use",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(23)
                      ),),
                      SizedBox(height: getProportionateScreenHeight(150),),
                      DefaultButton(text: "Try Order", press: (){}, height: getProportionateScreenHeight(57), width: getProportionateScreenWidth(157))
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
