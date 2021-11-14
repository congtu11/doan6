
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'intro_page/intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2500));
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  void navigationPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const IntroPage()));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Pattern.png",
                  fit: BoxFit.fill,
                  width: SizeConfig.screenWidth,
                ),
                Opacity(
                  opacity: opacity.value,
                    child: Center(child: Image.asset("assets/images/Logo.png")))
              ],
            ),
          )
        ],
      )),
    );
  }
}
