import 'package:daoan6/Pages/components/coustom_bottom_nav_bar.dart';
import 'package:daoan6/Pages/components/custom_appbar.dart';
import 'package:daoan6/Pages/wishlish/components/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class WishList extends StatelessWidget {

  static String routeName = "/wishlist";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
