import 'package:daoan6/Pages/components/coustom_bottom_nav_bar.dart';
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
  late Color appBarColor;
  @override
  void initState() {
    super.initState();
    appBarColor = Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: getProportionateScreenWidth(45),
          decoration: BoxDecoration(
            color: appBarColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Icon(Icons.search,color: Colors.black,),flex: 1,),
              Flexible(child: Text("Search Product",style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(18)),),flex: 3,),
            ],
          ),
        ),
        actions: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg", press: () {  },
            // press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
