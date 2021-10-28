// import 'package:daoan6/Pages/components/custom_surfix_icon.dart';
// import 'package:daoan6/Pages/components/default_button.dart';
// import 'package:daoan6/Pages/components/form_error.dart';
// import 'package:daoan6/Pages/components/rounded_icon_btn.dart';
// import 'package:daoan6/Pages/forgot_password/forgot_password_screen.dart';
// import 'package:daoan6/Pages/login_success/login_success_screen.dart';
// import 'package:daoan6/helper/keyboard.dart';
// import 'package:daoan6/network_service/request_service.dart';
// import 'package:daoan6/network_service/user_service.dart';
// import 'package:flutter/material.dart';
// import '../../../constants.dart';
// import '../../../size_config.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class SignForm extends StatefulWidget {
//   const SignForm({Key? key}) : super(key: key);
//
//   @override
//   _SignFormState createState() => _SignFormState();
// }
//
// class _SignFormState extends State<SignForm> {
//   ApiHelper service = ApiHelper();
//
//   UserService userService = UserService();
//
//   final _formKey = GlobalKey<FormState>();
//
//   late String email;
//   late String password;
//
//   bool remember = false;
//   bool isLoading = false;
//
//   final List<String> errors = [];
//
//   void addError({required String error}) {
//     if (!errors.contains(error)) {
//       setState(() {
//         errors.add(error);
//       });
//     }
//   }
//
//   void removeError({required String error}) {
//     if (errors.contains(error)) {
//       setState(() {
//         errors.remove(error);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           buildEmailFormField(),
//           SizedBox(height: getProportionateScreenHeight(20)),
//           buildPasswordFormField(),
//           SizedBox(height: getProportionateScreenHeight(20)),
//           FormError(errors: errors),
//           Row(
//             children: [
//               Checkbox(
//                 value: remember,
//                 activeColor: kPrimaryColor,
//                 onChanged: (value) {
//                   setState(() {
//                     remember = value!;
//                   });
//                 },
//               ),
//               const Text("Lưu đăng nhập"),
//               const Spacer(),
//               GestureDetector(
//                 child: const Text(
//                   "Quên mật khẩu ?",
//                   style: TextStyle(decoration: TextDecoration.underline),
//                 ),
//               )
//             ],
//           ),
//           SizedBox(height: getProportionateScreenHeight(20)),
//           DefaultButton(
//             text: "Đăng nhập",
//             press: () {
//               if (_formKey.currentState!.validate() && errors.isEmpty == true) {
//                 _formKey.currentState!.save();
//                 KeyboardUtil.hideKeyboard(context);
//                 var data = {'email': email, 'password': password};
//                 userService.login(data).then((value) {
//                   switch (value) {
//                     case 200:
//                       Navigator.pushNamed(
//                           context, LoginSuccessScreen.routeName);
//                       break;
//                     case 401:
//                       setState(() {
//                         addError(error: kLoginFail);
//                       });
//                       break;
//                     case 408:
//                       setState(() {
//                         addError(error: kRequestTimeOut);
//                       });
//                       break;
//                     default:
//                       "Error";
//                   }
//                 });
//               }
//             },
//           ),
//           SizedBox(height: getProportionateScreenHeight(10)),
//           DefaultButton(
//             text: "Đăng ký",
//             press: () {},
//           ),
//           SizedBox(height: getProportionateScreenHeight(30),),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               SizedBox(
//                 width: getProportionateScreenWidth(135),
//                 child: Divider(
//                   height: 10,
//                   color: Colors.lightBlueAccent,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Text("Hoặc"),
//               ),
//               SizedBox(
//                 width: getProportionateScreenWidth(135),
//                 child: Divider(
//                   height: 10,
//                   color: Colors.lightBlueAccent,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: getProportionateScreenHeight(30),),
//           Row(
//             children: [
//               SizedBox(width: getProportionateScreenWidth(110),),
//               RoundedIconBtn(icon: FontAwesomeIcons.facebook, press: (){}),
//               SizedBox(width: getProportionateScreenWidth(20),),
//               RoundedIconBtn(icon: FontAwesomeIcons.google, press: (){})
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   TextFormField buildPasswordFormField() {
//     return TextFormField(
//       obscureText: true,
//       onSaved: (newValue) => password = newValue!,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kPassNullError);
//         } else if (value.length >= 8) {
//           removeError(error: kShortPassError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kPassNullError);
//           return null;
//         } else if (value.length < 8) {
//           addError(error: kShortPassError);
//           return null;
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         hintText: "Mật khẩu",
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(20),
//             borderSide: BorderSide(color: Colors.lightBlueAccent)),
//         enabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.lightBlueAccent),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         prefixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }
//
//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue!,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kEmailNullError);
//         } else if (emailValidatorRegExp.hasMatch(value)) {
//           removeError(error: kInvalidEmailError);
//         }
//         return;
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           addError(error: kEmailNullError);
//           return null;
//         } else if (!emailValidatorRegExp.hasMatch(value)) {
//           addError(error: kInvalidEmailError);
//           return null;
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         hintText: "Nhập email của bạn",
//         enabledBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.lightBlueAccent),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.lightBlueAccent),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         prefixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
//       ),
//     );
//   }
// }
