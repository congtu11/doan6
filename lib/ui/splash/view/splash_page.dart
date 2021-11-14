import 'package:flutter/material.dart';
import 'package:daoan6/ui/splash/controller/splash_controller.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<SplashController>(
        builder: (value) => Stack(alignment: Alignment.center, children: [
          Positioned(
            child: Image.asset(
              bgSplashPage,
            ),
            width: Get.width,
            height: Get.height,
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  logoApp,
                ),
                Text(
                  name_app,
                  style: TextStyle(
                    fontFamily: vigaRegular,
                    color: mainLightColor,
                    fontWeight: FontWeight.w500,
                    fontSize: largeXSize,
                  ),
                ),
                Text(
                  slogan_app,
                  style: TextStyle(
                    fontFamily: semiSemiBold,
                    color: textBlackColor,
                    fontSize: normalSize,
                  ),
                ),
              ],
            ),
            width: Get.width,
            height: Get.height,
          ),
        ]),
      ),
    );
  }
}
