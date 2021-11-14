//
// import 'package:flutter/material.dart';
//
// import '../../../size_config.dart';
// import 'sign_form.dart';
//
// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   child: Center(
//                     child: Image.asset("assets/images/Logo.png"),
//                   ),
//                   height: getProportionateScreenHeight(200),
//                 ),
//                 const SignForm(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
