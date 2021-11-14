import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFF9A84D).withOpacity(0.5)
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,size: getProportionateScreenWidth(30),),
                  hintText: "What do you want to order?",
                  hintStyle: TextStyle(
                      color: Color(0xFFF9A84D)
                  )
              ),
            ),
          ),

        ),
        Expanded(child: Container(
          // margin: EdgeInsets.only(right: 5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF9A84D).withOpacity(0.5)
          ),
          child: Center(
            child: Icon(FontAwesomeIcons.filter,color: Color(0xFFF9A84D),),
          ),
        ),flex: 1,)
      ],
    );
  }
}
