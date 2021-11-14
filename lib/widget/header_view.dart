import 'package:flutter/material.dart';
import 'package:daoan6/ui/home/controller/home_controller.dart';
import 'package:daoan6/ui/home/model/menu_emblem.dart';
import 'package:daoan6/ui/home/model/restaurant_emblem.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/neu_button_widget.dart';
import 'package:daoan6/widget/text_field_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HeaderView extends GetView<HomeController> {
  final Function()? onPressed;

  const HeaderView(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildHeader(onPressed),
    );
  }

  Widget _buildHeader(Function()? onPressed) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0.w,
              vertical: 3.0.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  TITLE_HOME_PAGE,
                  style: TextStyle(
                    fontFamily: robotoRegular,
                    fontSize: largeMediumSize,
                    height: normalLineSpacing,
                  ),
                ),
                NeuButtonWidget(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: mainDarkColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(
              horizontal: 8.0.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFieldWidget(
                  width: 66.0.w,
                  height: 50,
                  prefixIcon: Icons.search,
                  prefixIconColor: orangeDarkColor,
                  hint: HINT_SEARCH_TEXT,
                  radius: 15,
                ),
                NeuButtonWidget(
                  width: 50,
                  height: 50,
                  bgButton: orangeLightColor,
                  child: Center(
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        ic_filter,
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
    );
  }
}
