
import 'package:daoan6/Pages/detailmenu/detailmenu.dart';
import 'package:daoan6/Pages/orderdetails/orderdetails.dart';
import 'package:daoan6/Pages/your_order/yourorder.dart';
import 'package:daoan6/routes.dart';
import 'package:daoan6/ui/call/controller/call_controller.dart';
import 'package:daoan6/ui/chat/controller/chat_controller.dart';
import 'package:daoan6/ui/chat/controller/chat_detail_controller.dart';
import 'package:daoan6/ui/home/controller/home_controller.dart';
import 'package:daoan6/ui/home/controller/menu_controller.dart';
import 'package:daoan6/ui/home/controller/notification_controller.dart';
import 'package:daoan6/ui/home/controller/rating_controller.dart';
import 'package:daoan6/ui/home/controller/search_controller.dart';
import 'package:daoan6/ui/home/controller/view_more_controller.dart';
import 'package:daoan6/ui/home/controller/voucher_controller.dart';
import 'package:daoan6/ui/main/controller/main_controller.dart';
import 'package:daoan6/ui/main/view/main_page.dart';
import 'package:daoan6/ui/splash/controller/splash_controller.dart';
import 'package:daoan6/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'Pages/profile/profile.dart';



late bool isFirst;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isFirst = prefs.getBool("isFirst") ?? true;
  if (isFirst) {
    prefs.setBool("isFirst", false);
  }
  WidgetsFlutterBinding.ensureInitialized();
  runApp(_buildApp());
}

Widget _buildApp() => LayoutBuilder(builder: (context, constraints) {
  return Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgWhiteColor,
        primaryColor: mainDarkColor,
      ),
      routes: routes,
      home:  MainPage(),
      initialBinding: _Binding(),

    );
  });
});
class _Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<MainController>(() => MainController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SearchController>(() => SearchController(), fenix: true);
    Get.lazyPut<ViewMoreController>(() => ViewMoreController(), fenix: true);
    Get.lazyPut<MenuController>(() => MenuController(), fenix: true);
    Get.lazyPut<ChatController>(() => ChatController(), fenix: true);
    Get.lazyPut<ChatDetailController>(() => ChatDetailController(),
        fenix: true);
    Get.lazyPut<NotificationController>(() => NotificationController(),
        fenix: true);
    Get.lazyPut<VoucherController>(() => VoucherController(), fenix: true);
    Get.lazyPut<CallController>(() => CallController(), fenix: true);
    Get.lazyPut<RatingController>(() => RatingController(), fenix: true);
  }
}
