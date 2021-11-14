import 'package:flutter/material.dart';
import 'package:daoan6/ui/cart/view/cart_page.dart';
import 'package:daoan6/ui/chat/view/chat_page.dart';
import 'package:daoan6/ui/home/view/home_page.dart';
import 'package:daoan6/ui/main/model/navigate_emblem.dart';
import 'package:daoan6/ui/user/view/user_page.dart';
import 'package:daoan6/values/colors.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  int currentPage = 0;

  void onInit() {
    super.onInit();
  }

  void onChangePage(int index) {
    currentPage = index;

    navigateItem[index].color = mainDarkColor;
    for (var i = 0; i < navigateItem.length; i++) {
      if (i != index) navigateItem[i].color = activeColor;
    }
    update();
  }

  Widget? getPage(int pos) {
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return UserPage();
      case 2:
        return CartPage();
      case 3:
        return ChatPage();
    }
  }
}
