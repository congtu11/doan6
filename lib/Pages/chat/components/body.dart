import 'package:daoan6/Pages/chat/components/conversation_card.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            Container(
              height: getProportionateScreenHeight(60),
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 1.5),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30)
              ),
              child: TextField(
                style: TextStyle(
                  height: getProportionateScreenWidth(2),
                  fontSize: getProportionateScreenWidth(18)
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    color: Colors.black26
                  ),
                  suffixIcon: Icon(Icons.search)
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            ...List.generate(30, (index) => ConversationCard())
          ]),
        ),
      ),
    );
  }
}
