
import 'package:daoan6/Pages/detailmenu/detailmenu.dart';
import 'package:daoan6/Pages/orderdetails/orderdetails.dart';
import 'package:daoan6/Pages/your_order/yourorder.dart';
import 'package:daoan6/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/profile/profile.dart';



late bool isFirst;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isFirst = prefs.getBool("isFirst") ?? true;
  if (isFirst) {
    prefs.setBool("isFirst", false);
  }
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home:  YourOrder(),
    );
  }
}
