import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'neu_button_widget.dart';

class SpecialButtonWidget extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  final Function()? onPressedActivity;
  final String? bgImage;
  final String? title;
  final String? activity;
  final double? width;
  final double? height;
  final Color? textTitleColor;
  final Color? textActivityColor;

  const SpecialButtonWidget(
      {Key? key,
      this.child,
      this.onPressed,
      this.bgImage,
      this.title,
      this.activity,
      this.width,
      this.height,
      this.textTitleColor,
      this.textActivityColor,
      this.onPressedActivity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Get.width,
      height: height ?? 20.0.h,
      margin: EdgeInsets.only(
        bottom: 5.0.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned(
            child: Image.asset(
              bgImage!,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40.0.w,
                  padding: EdgeInsets.only(right: 2.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: robotoRegular,
                          fontSize: mediumSize,
                          color: textTitleColor ?? textWhiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 2.0.w,
                      ),
                      NeuButtonWidget(
                        width: 82,
                        height: 32,
                        radius: 6,
                        child: Center(
                          child: Text(
                            activity!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: robotoRegular,
                              fontSize: verySmallSize,
                              color: textActivityColor ?? mainLightColor,
                            ),
                          ),
                        ),
                        onPressed: onPressed,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
