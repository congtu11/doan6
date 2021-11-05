import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OrderCard extends StatefulWidget {
   OrderCard({Key? key,required this.image,required this.press}) : super(key: key);
  String image;
  void Function(DismissDirection direction) press;

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key:  UniqueKey(),
      background: Container(
        decoration: BoxDecoration(
            color: Colors.yellow.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.cancel,color: Colors.white,size: 30,),
              SizedBox(width: getProportionateScreenWidth(30),),
            ],
          ),
          alignment: Alignment.centerRight,),
      ),
      onDismissed: widget.press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: getProportionateScreenHeight(103),
        decoration: lightBoxWithShadow,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(widget.image),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Spacy fresh crab",style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.bold
                  ),),
                  Text("Waroenk kita",style: TextStyle(
                      color: Colors.grey.withOpacity(0.8)
                  ),),
                  Text("\$ 35",style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(18)
                  ),)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      child: Center(
                        child: Container(
                          width: getProportionateScreenWidth(30),
                          height: getProportionateScreenWidth(30),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Color(0xFF15BE77).withOpacity(0.5),
                                    Color(0xFF53E8B8).withOpacity(0.5)
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(FontAwesomeIcons.minus,size: 15,color: kPrimaryColor,),
                        ),
                      )),
                  Expanded(
                      child: Center(
                        child: Text("1",style: TextStyle(
                            fontSize: getProportionateScreenWidth(17)
                        ),),
                      )
                  ),
                  Expanded(child: Center(
                    child: Container(
                      width: getProportionateScreenWidth(30),
                      height: getProportionateScreenWidth(30),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                Color(0xFF15BE77),
                                Color(0xFF53E8B8)
                              ]
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(FontAwesomeIcons.plus,size: 15,color: Colors.white70,),
                    ),
                  )),
                ],
              ),

            ),
            SizedBox(width: getProportionateScreenWidth(10),)
          ],
        ),
      ),
    );
  }
}
