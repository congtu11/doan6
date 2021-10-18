import 'package:daoan6/Pages/chat/chat.dart';
import 'package:daoan6/Pages/home/home_page.dart';
import 'package:daoan6/Pages/profile/profile_screen.dart';
import 'package:daoan6/Pages/wishlish/wishlish.dart';
import 'package:flutter/widgets.dart';
import 'Pages/Login/sign_in_screen.dart';
import 'Pages/forgot_password/forgot_password_screen.dart';
import 'Pages/login_success/login_success_screen.dart';
import 'Pages/otp/otp_screen.dart';
import 'Pages/sign_up/sign_up_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  WishList.routeName: (context) => WishList(),
  ChatScreen.routeName: (context) => ChatScreen()
};
