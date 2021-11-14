import 'dart:async';

import 'package:daoan6/Pages/Login/login_screen.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../components/intro_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {

  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  int currentPage = 0;
  PageController pageController = PageController();
  List<Map<String, String>> splashData = [
    {
      "text": "Find your Comfort\nFood here",
      "subtext":
          "Here You Can find a chef or dish for every \ntaste and color.Endjoy!",
      "image": "assets/images/Illustartion.png"
    },
    {
      "text": "Food Ninja is Where Your\n" "Comfort Food Lives",
      "subtext": "Enjoy a fast and smooth food delivery at\nyour doorstep",
      "image": "assets/images/Illustration2.png"
    },
  ];
  @override
  void initState() {
    super.initState();
    scaleController = AnimationController(vsync: this, duration: const Duration(milliseconds: 200))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(context, AnimatingRoute(page: SignInScreen(), route: SignInScreen()));
          Timer(const Duration(milliseconds: 320), () {
            scaleController.reset();
          });
        }
      });
    scaleAnimation = Tween<double>(begin: 0.0, end: 16.0).animate(scaleController);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: pageController,
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]['text']!,
                  subtext: splashData[index]['subtext']!,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (currentPage == 1) {
                          scaleController.forward();
                        } else {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 10),
                              curve: Curves.bounceInOut);
                        }
                      },
                      child: Stack(
                        children: [
                          Ink(
                            width: getProportionateScreenWidth(200),
                            height: getProportionateScreenHeight(80),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    colors: [
                                      Color(0xFF15BE77),
                                      Color(0xFF53E88B),
                                    ])),
                            child: Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          AnimatedBuilder(
                              animation: scaleAnimation,
                              builder: (c,child) => Transform.scale(
                                scale: scaleAnimation.value,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [
                                              Color(0xFF15BE77),
                                              Color(0xFF53E88B),
                                            ]))
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // AnimatedContainer buildDot({required int index}) {
  //   return AnimatedContainer(
  //     duration: kAnimationDuration,
  //     margin: EdgeInsets.only(right: 5),
  //     height: 6,
  //     width: currentPage == index ? 20 : 6,
  //     decoration: BoxDecoration(
  //       color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
  //       borderRadius: BorderRadius.circular(3),
  //     ),
  //   );
  // }
}

class AnimatingRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;
  AnimatingRoute({required this.page, required this.route})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                page,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation,
                  child: route,
                ));
}
