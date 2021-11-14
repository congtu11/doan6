import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:daoan6/ui/call/controller/call_controller.dart';
import 'package:daoan6/ui/chat/model/message_emblem.dart';
import 'package:daoan6/ui/chat/model/user_emblem.dart';
import 'package:daoan6/ui/chat/view/chat_detail_page.dart';
import 'package:daoan6/ui/home/controller/home_controller.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/bg_view.dart';
import 'package:daoan6/widget/button_gradient_widget.dart';
import 'package:daoan6/widget/neu_button_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CallPage extends GetView<CallController> {
  final User user;

  const CallPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GetBuilder<CallController>(
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
          child: BgView(
            choosed: 2,
          ),
        ),
        Positioned(
          child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 3.0.w),
            padding: EdgeInsets.only(top: 20.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: mainLightColor,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(user.avatar),
                  ),
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                Text(
                  user.name,
                  style: TextStyle(
                    color: textBlackColor,
                    fontFamily: robotoRegular,
                    fontSize: largeXLSize,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 3.0.h,
                ),
                Text(
                  RING,
                  style: TextStyle(
                    color: textGreyColor,
                    fontFamily: robotoRegular,
                    fontSize: mediumXSize,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          width: Get.width,
          child: Container(
            padding: EdgeInsets.only(bottom: 8.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonGradientWidget(
                  width: 20.0.w,
                  height: 20.0.w,
                  borderRadius: 10.0.w,
                  onPressed: () {},
                  linearGradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [greenWhiteLightColor, greenWhiteDarkColor],
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      ic_sound,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ButtonGradientWidget(
                  width: 20.0.w,
                  height: 20.0.w,
                  borderRadius: 10.0.w,
                  onPressed: () {},
                  linearGradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [redLightColor, redDarkColor],
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      ic_close,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
