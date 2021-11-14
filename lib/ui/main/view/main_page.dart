import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:daoan6/ui/main/controller/main_controller.dart';
import 'package:daoan6/ui/main/model/navigate_emblem.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (value) => Scaffold(
        body: _buildBody(controller.currentPage),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  Widget? _buildBody(int selectedPageIndex) =>
      controller.getPage(selectedPageIndex);

  Widget _buildBottomNavigation() => BottomNavyBar(
        backgroundColor: bgWhiteColor,
        selectedIndex: controller.currentPage,
        itemCornerRadius: 12,
        onItemSelected: (int index) {
          controller.onChangePage(index);
        },
        items: navigateItem.map((NavigateEmblem navigateEmblem) {
          return BottomNavyBarItem(
            activeColor: activeColor,
            icon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                navigateEmblem.image,
                color: navigateEmblem.color,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                navigateEmblem.text,
                style: TextStyle(
                  fontFamily: robotoRegular,
                  fontSize: smallMediumSize,
                  color: textBlackColor,
                ),
              ),
            ),
          );
        }).toList(),
      );
}
