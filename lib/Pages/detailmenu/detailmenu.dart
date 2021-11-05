import 'package:daoan6/constants.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailMenu extends StatefulWidget {
  const DetailMenu({Key? key}) : super(key: key);

  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                        width: getProportionateScreenWidth(76),
                        height: getProportionateScreenHeight(34),
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("Popular",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(150),),
                      Container(
                        width: getProportionateScreenWidth(34),
                        height: getProportionateScreenWidth(34),
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Icon(Icons.location_on_outlined,color: kPrimaryColor,),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10),),
                      Container(
                        width: getProportionateScreenWidth(34),
                        height: getProportionateScreenWidth(34),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Icon(FontAwesomeIcons.heart,color: Colors.red,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Text("Wijie Bar and Resto",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,color: kPrimaryColor,),
                      Text("19 Km"),
                      SizedBox(width: getProportionateScreenWidth(10),),
                      Icon(Icons.star_half_outlined,color: kPrimaryColor,),
                      Text("4.8 Rating"),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  SizedBox(
                    height: getProportionateScreenHeight(120),
                    child: Text(
                      "Thank you everyone for the support surrounding this project! sliding_up_panel has grown far larger than I could have ever imagined, so parsing through all the feature requests and new issues has taken me more time than I'd like. If you're interested in helping maintain this project, please send me an email at arjain@andrew.cmu.edu",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Text("Testimonials",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                  Column(
                    children: [
                      ...List.generate(3, (index) => Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(8.0),
                        height: getProportionateScreenHeight(128),
                        decoration: lightBoxWithShadow,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset("assets/images/Photo Profile.png"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Dianne Russell",style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          ),),
                                          Text("12 April 2021",style: TextStyle(
                                              color: Colors.grey.withOpacity(0.5)
                                          ),)
                                        ],
                                      ),
                                      SizedBox(width: getProportionateScreenWidth(30),),
                                      Container(
                                        height: getProportionateScreenHeight(33),
                                        width: getProportionateScreenWidth(53),
                                        decoration: BoxDecoration(
                                            color: kPrimaryColor.withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              SizedBox(width: getProportionateScreenWidth(5),),
                                              Icon(Icons.star,color: kPrimaryColor,),
                                              Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: kPrimaryColor))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: getProportionateScreenHeight(10),),
                                  Expanded(
                                    child: Text("This is great. So delicious! You Must Here. With Your family product helllo how are you iam fine thanks",overflow: TextOverflow.ellipsis,maxLines: 3,),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                      )),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      ),
    );
  }
}
