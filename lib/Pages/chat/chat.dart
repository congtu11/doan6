import 'package:daoan6/Pages/components/coustom_bottom_nav_bar.dart';
import 'package:daoan6/enums.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static String routeName = "/chat";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.withOpacity(0.5),
        title: Center(child: Text("Chat room",style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(onPressed: (){} , icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message,),
    );
  }
}
