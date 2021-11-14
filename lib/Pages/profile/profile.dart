import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import '../../size_config.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double _width = MediaQuery.of(context).size.width;
    var currentIndex = 0;
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: SizeConfig.screenHeight*0.4,
        body: Container(
          child: Image.asset("assets/images/Photo Restaurant.png",fit: BoxFit.fill,),
        ),
        panelBuilder: (controller) {
          return SingleChildScrollView(
            controller: controller,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30),vertical: getProportionateScreenHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(5),
                        width: getProportionateScreenWidth(58),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange.withOpacity(0.5)
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Row(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(111),
                        height: getProportionateScreenHeight(34),
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("Member Gold",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Anam Wusono",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                          Text("anamwp66@gmail.com",style: TextStyle(fontSize: 14,color: Colors.grey.withOpacity(0.5)),)
                        ],
                      ),
                      Icon(Icons.edit,color: kPrimaryColor,)
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Container(
                    width: getProportionateScreenWidth(347),
                    height: getProportionateScreenHeight(64),
                    decoration: lightBoxWithShadow,
                    child: Row(
                      children: [
                        SizedBox(width: getProportionateScreenHeight(20),),
                        Image.asset("assets/images/Voucher Icon.png"),
                        SizedBox(width: getProportionateScreenHeight(20),),
                        Text("You Have 3 Voucher",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Text("Favorite",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Column(
                    children: [
                      ...List.generate(5, (index) => Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: getProportionateScreenHeight(103),
                        decoration: lightBoxWithShadow,
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset("assets/images/order1.png"),
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
                              child: Center(
                                child: Container(
                                  height: getProportionateScreenHeight(30),
                                  width: getProportionateScreenWidth(100),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(child: Text("Buy Again",style: TextStyle(color: Colors.white),)),
                                ),
                              ),

                            ),
                            SizedBox(width: getProportionateScreenWidth(10),)
                          ],
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        height: _width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.005),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: _width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: _width * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? _width * .12 : 0,
                      width: index == currentIndex ? _width * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? kPrimaryColor.withOpacity(0.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: _width * .2125,
                  height: _width * .155,
                  child: Center(
                    child: index == currentIndex ? Row(
                      children: [
                          Icon(
                            listOfIcons[index],
                            size: _width * .076,
                            color: index == currentIndex
                                ? kPrimaryColor
                                : Colors.black26,
                          ),
                          Text(listofString[index]),

                      ],
                    )
                        : Row (
                      children: [
                        SizedBox(width: 25,),
                        Icon(
                          listOfIcons[index],
                          size: _width * .076,
                          color: index == currentIndex
                              ? Colors.blueAccent
                              : Colors.black26,
                        ),
                      ],
                    )
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
  List<String> listofString = [
    "Home",
    "Profile",
    "Bag",
    "Message"
  ];
}
