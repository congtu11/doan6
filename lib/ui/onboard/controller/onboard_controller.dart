import 'package:flutter/cupertino.dart';
import 'package:daoan6/ui/onboard/model/onboard_model.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/button_gradient_widget.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardController extends GetxController {
  late PageController _onboardController;
  late int _index;

  int get index => _index;

  set index(int index) {
    _index = index;
  }

  @override
  void _onInit() {
    _onboardController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void dispose() {
    _onboardController.dispose();
    super.dispose();
  }

  void storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }
}
