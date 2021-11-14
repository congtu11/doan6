import 'package:flutter/material.dart';
import 'package:daoan6/values/images.dart';
import 'package:get/get.dart';

class BgView1 extends StatelessWidget {
  const BgView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Image.asset(
        bgHomePage,
        fit: BoxFit.fill,
      ),
    );
  }
}
