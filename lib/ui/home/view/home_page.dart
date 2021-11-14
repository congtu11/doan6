import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:daoan6/ui/home/controller/home_controller.dart';
import 'package:daoan6/ui/home/model/menu_emblem.dart';
import 'package:daoan6/ui/home/model/restaurant_emblem.dart';
import 'package:daoan6/ui/home/view/menu_page.dart';
import 'package:daoan6/ui/home/view/notification_page.dart';
import 'package:daoan6/ui/home/view/rating_page.dart';
import 'package:daoan6/ui/home/view/search_page.dart';
import 'package:daoan6/ui/home/view/view_more_page.dart';
import 'package:daoan6/ui/home/view/voucher_page.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/bg_view_1.dart';
import 'package:daoan6/widget/neu_button_widget.dart';
import 'package:daoan6/widget/special_button_widget.dart';
import 'package:daoan6/widget/text_field_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GetBuilder<HomeController>(
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
          child: BgView1(),
        ),
        Positioned(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 8.0.w,
                  ),
                  Row(
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
                        onPressed: () {
                          Get.to(NotificationPage());
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  Container(
                    width: Get.width,
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
                          onPressed: () {
                            Get.to(SearchPage());
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(VoucherPage());
                    },
                    child: SpecialButtonWidget(
                      width: Get.width,
                      height: 122,
                      bgImage: bgAdver,
                      title: TITLE_AD,
                      activity: BUY_NOW,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              NEAREST_RES,
                              style: TextStyle(
                                color: textBlackColor,
                                fontFamily: robotoRegular,
                                fontSize: normalXSize,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  ViewMorePage(),
                                );
                              },
                              child: Text(
                                VIEW_MORE,
                                style: TextStyle(
                                  color: textOrangeColor,
                                  fontFamily: robotoRegular,
                                  fontSize: smallMediumSize,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: Get.width,
                          height: 30.0.h,
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            itemCount: restaurantItem.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(right: 24),
                              child: NeuButtonWidget(
                                width: 147,
                                height: 184,
                                radius: 22,
                                onPressed: () {
                                  Get.to(
                                      RattingPage(res: restaurantItem[index]));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(restaurantItem[index].imgRes),
                                    SizedBox(height: 2.0.w),
                                    Text(
                                      restaurantItem[index].nameRes,
                                      style: TextStyle(
                                        color: textBlackColor,
                                        fontFamily: robotoRegular,
                                        fontSize: normalSize,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 1.5.w,
                                    ),
                                    Text(
                                      restaurantItem[index].time,
                                      style: TextStyle(
                                        color: textGreyColor,
                                        fontFamily: robotoRegular,
                                        fontSize: smallMediumSize,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0.w,
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              POPULAR_MENU,
                              style: TextStyle(
                                color: textBlackColor,
                                fontFamily: robotoRegular,
                                fontSize: normalXSize,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(MenuPage());
                              },
                              child: Text(
                                VIEW_MORE,
                                style: TextStyle(
                                  color: textOrangeColor,
                                  fontFamily: robotoRegular,
                                  fontSize: smallMediumSize,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Container(
                          width: Get.width,
                          height: Get.height,
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            itemCount: menuItem.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, i) => Container(
                              margin: EdgeInsets.only(bottom: 24),
                              child: NeuButtonWidget(
                                width: Get.width,
                                height: 87,
                                radius: 22,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0.w),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 64,
                                            height: 64,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Image.asset(
                                              menuItem[i].imgMenu,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3.0.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                menuItem[i].nameMenu,
                                                style: TextStyle(
                                                  color: textBlackColor,
                                                  fontFamily: robotoRegular,
                                                  fontSize: normalSize,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height: 1.5.w,
                                              ),
                                              Text(
                                                menuItem[i].nameRes,
                                                style: TextStyle(
                                                  color: textGreyColor,
                                                  fontFamily: robotoRegular,
                                                  fontSize: smallMediumSize,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        menuItem[i].price,
                                        style: TextStyle(
                                          color: textOrangeColor,
                                          fontFamily: robotoRegular,
                                          fontSize: largeSize,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
