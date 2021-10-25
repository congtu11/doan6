import 'package:daoan6/Pages/chat/chat_body.dart';
import 'package:daoan6/Pages/components/custom_appbar.dart';

import 'package:daoan6/Pages/wishlish/wishlistbody.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';


class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    static const List<Widget> _widgetOptions = <Widget>[
      HomeBody(),
      WishListBody(),
      ChatBody(),
    ];
    @override
    void initState() {
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      SizeConfig().init(context);
      return Scaffold(
          appBar: CustomAppbar(),
          extendBodyBehindAppBar: true,
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green.withOpacity(0.1),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Message',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),

      );
    }
  }
