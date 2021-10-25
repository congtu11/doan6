import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentPage = 0;
  PageController pageController = PageController();

  newSlide() {
    if (pageController.hasClients) {
      Timer.periodic(Duration(seconds: 4), (timer) {
        if (currentPage < 2) {
          currentPage += 1;
        } else if (currentPage == 2) {
          currentPage = 0;
        }
        print("Current page now is : $currentPage");
        pageController.animateToPage(currentPage,
            duration: Duration(milliseconds: 500), curve: Curves.linear);
      });
    }
  }

  List<Map<String, String>> splashData = [
    {"image": "assets/images/hoa1.jpg"},
    {"image": "assets/images/hoa2.jpg"},
    {"image": "assets/images/hoa3.jpg"},
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      print(pageController.hasClients.toString());
      newSlide();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: 3,
                controller: pageController,
                itemBuilder: (context, index) => GestureDetector(
                  child: Container(
                    height: 200,
                    width: SizeConfig.screenWidth,
                    child: Image.asset(
                      splashData[index]["image"]!,
                      fit: BoxFit.fill,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                splashData.length,
                    (index) => buildDot(index: index),
              ),
            ),
          )
        ],
      ),
    );
  }
  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
