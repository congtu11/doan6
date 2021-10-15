
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';


import 'components/header.dart';

class RatingDetail extends StatelessWidget {

  RatingDetail({required this.rate});

  final double rate;
  int rating = 4;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               Header(rate: rate,),
               SizedBox(height: getProportionateScreenHeight(15),),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(10, (index) => Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: Text("A"),
                              ),
                              SizedBox(width: getProportionateScreenWidth(15),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ven@gmail.com",style: TextStyle(fontSize: 18),),
                                  Row(
                                    children: [
                                      ...List.generate(rating, (index) => Icon(Icons.star,size: getProportionateScreenWidth(15),)),
                                      ...List.generate(5-rating, (index) => Icon(Icons.star_border,size: getProportionateScreenWidth(15),)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Text("Lorem Ipsum is simply dummy text of the printing and"
                              "typesetting industry. Lorem Ipsum has been the industry's"
                              "standard dummy text ever since the 1500s, when an unknown"
                          )
                        ],
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}