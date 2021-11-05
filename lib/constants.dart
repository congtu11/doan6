import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF53E88B);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kErrorColor = Color(0xFFF03738);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kDefaultPadding = 20.0;
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Hãy nhập email của bạn";
const String kInvalidEmailError = "Email không chính xác";
const String kPassNullError = "Hãy nhập mật khẩu của bạn";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Mật khẩu không đúng";
const String kNamelNullError = "Hãy nhập tên của bạn";
const String kPhoneNumberNullError = "Hãy nhập số điện thoại của bạn";
const String kAddressNullError = "Please Enter your address";
const String kRequestTimeOut = " Request Time Out";
const String kLoginFail = "Email or password not true";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
final lightBoxWithBorder = BoxDecoration(
    border: Border.all(color: Colors.black12),
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      boxShadow
    ]);
final lightBoxWithShadow = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    boxShadow: [
      boxShadow
    ]
);
final boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.05),
  spreadRadius: 10,
  blurRadius: 10,
  // changes position of shadow
);
