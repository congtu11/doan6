
import 'package:daoan6/Pages/Login/sign_in_screen.dart';
import 'package:daoan6/main.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'home/home_page.dart';
import 'intro_page/intro_page.dart';



class SplashScreen extends StatefulWidget {

  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {

    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 2500));
    opacity = Tween<double>(begin: 1.0,end: 0.0).animate(controller)
    ..addListener(() {
      setState(() {

      });
    });
    controller.forward().then((_) {
      navigationPage();
    });
  }
  void navigationPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => isFirst ? IntroPage() : SignInScreen()));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: <Widget>[
                Expanded(
                  child: Opacity(
                      opacity: opacity.value,
                      child: Image.asset('assets/logo.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: 'Powered by '),
                          TextSpan(
                              text: 'int2.io',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}