import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:daoan6/ui/home/controller/home_controller.dart';
import 'package:daoan6/ui/home/controller/search_controller.dart';
import 'package:daoan6/ui/home/model/menu_emblem.dart';
import 'package:daoan6/ui/home/model/restaurant_emblem.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/header_view.dart';
import 'package:daoan6/widget/neu_button_widget.dart';
import 'package:daoan6/widget/text_field_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GetBuilder<SearchController>(
        builder: (value) => AnnotatedRegion(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: _buildBody(),
            ),
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            )),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            bgHomePage,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5.0.w,
                  ),
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
                    child: TextFieldWidget(
                      width: Get.width,
                      height: 50,
                      prefixIcon: Icons.search,
                      prefixIconColor: orangeDarkColor,
                      hint: HINT_SEARCH_TEXT,
                      radius: 15,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 8.0.w, vertical: 3.0.w),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TYPE,
                          style: TextStyle(
                            color: textBlackColor,
                            fontFamily: robotoRegular,
                            fontSize: medium15Size,
                          ),
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            NeuButtonWidget(
                              width: 102,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  RESTAURANT,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    fontSize: smallMediumSize,
                                    color: textOrangeColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 72,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  MENU,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 8.0.w, vertical: 3.0.w),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LOCATION,
                          style: TextStyle(
                            color: textBlackColor,
                            fontFamily: robotoRegular,
                            fontSize: medium15Size,
                          ),
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            NeuButtonWidget(
                              width: 70,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  KC1KM,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    fontSize: smallMediumSize,
                                    color: textOrangeColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 86,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  KCL10KM,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 86,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  KCN10KM,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 8.0.w, vertical: 3.0.w),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FOOD,
                          style: TextStyle(
                            color: textBlackColor,
                            fontFamily: robotoRegular,
                            fontSize: medium15Size,
                          ),
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            NeuButtonWidget(
                              width: 70,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  CAKE,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    fontSize: smallMediumSize,
                                    color: textOrangeColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 71,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  SOUP,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 120,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  MAIN_COURSE,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            NeuButtonWidget(
                              width: 99,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  APPETIZED,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    fontSize: smallMediumSize,
                                    color: textOrangeColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                            NeuButtonWidget(
                              width: 87,
                              height: 44,
                              radius: 6,
                              bgButton: orangeLightColor,
                              child: Center(
                                child: Text(
                                  DESSERT,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: robotoRegular,
                                    color: textOrangeColor,
                                    fontSize: smallMediumSize,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.0.w,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0.w,
                  ),
                  NeuButtonWidget(
                    width: 325,
                    height: 57,
                    radius: 15,
                    bgButton: activeColor,
                    child: Center(
                      child: Text(
                        SEARCH,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: robotoRegular,
                          color: textWhiteColor,
                          fontSize: normalXSize,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
