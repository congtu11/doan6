import 'package:daoan6/Pages/intro_page/components/body.dart';
import 'package:flutter/material.dart';


import '../../size_config.dart';

class IntroPage extends StatelessWidget {
  static String routeName = "/splash";

  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
