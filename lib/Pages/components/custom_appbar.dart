import 'package:daoan6/Pages/home/components/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();

  @override
  Size get preferredSize => Size.copy(AppBar().preferredSize);
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.copy(AppBar().preferredSize),
      child: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Container(
          height: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Text("Search product",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(16),
                      fontFamily: "Moli")),

            ],
          ),
        ),
        actions: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg", press: () {},
            // press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
