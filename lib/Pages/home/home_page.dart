import 'package:daoan6/Pages/components/coustom_bottom_nav_bar.dart';
import 'package:daoan6/Pages/components/custom_appbar.dart';
import 'package:daoan6/Pages/home/components/search_field.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'components/body.dart';
import 'components/icon_btn_with_counter.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
