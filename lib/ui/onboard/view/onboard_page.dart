import 'package:flutter/material.dart';
import 'package:daoan6/ui/login/view/login_page.dart';
import 'package:daoan6/ui/onboard/model/onboard_model.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/images.dart';
import 'package:daoan6/values/strings.dart';
import 'package:daoan6/widget/button_gradient_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardPage extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoardPage> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: imgOnboard1,
      text: ONBOARD_1,
      desc: DECS_ONBOARD_1,
      bg: bgWhiteColor,
    ),
    OnboardModel(
      img: imgOnboard2,
      text: ONBOARD_2,
      desc: DECS_ONBOARD_2,
      bg: bgWhiteColor,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhiteColor,
      appBar: AppBar(
        backgroundColor: bgWhiteColor,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              _storeOnboardInfo();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              SKIP,
              style: TextStyle(
                color: textBlackColor,
                fontFamily: semiRegular,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(screens[index].img),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: semiSemiBold,
                      color: textBlackColor,
                    ),
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: semiRegular,
                      color: textBlackColor,
                    ),
                  ),
                  Container(
                    height: 10.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: mainDarkColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  ButtonGradientWidget(
                    toUpperCase: false,
                    text: NEXT,
                    onPressed: () async {
                      print(index);
                      if (index == screens.length - 1) {
                        await _storeOnboardInfo();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      }
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceIn,
                      );
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}

// class OnboardPage extends GetView<OnboardController> {
//   const OnboardPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody(),
//     );
//   }
// }

// class _buildBody extends StatelessWidget {
//   List<OnboardModel> pages = <OnboardModel>[
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_1,
//       desc: DECS_ONBOARD_1,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_2,
//       desc: DECS_ONBOARD_2,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//   ];

//   int currentIndex = 0;

//   _storeOnboardInfo() async {
//     print("Shared pref called");
//     int isViewed = 0;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('onBoard', isViewed);
//     print(prefs.getInt('onBoard'));
//   }

//   List<OnboardModel> pages = <OnboardModel>[
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_1,
//       desc: DECS_ONBOARD_1,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_2,
//       desc: DECS_ONBOARD_2,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         backgroundColor: bgWhiteColor,
//         appBar: AppBar(
//           backgroundColor: bgWhiteColor,
//           elevation: 0.0,
//           actions: [
//             TextButton(
//               onPressed: () {
//                 _storeOnboardInfo;
//                 Get.to(LoginPage());
//               },
//               child: Text(
//                 SKIP,
//                 style: TextStyle(
//                   color: textBlackColor,
//                   fontFamily: semiLight,
//                 ),
//               ),
//             )
//           ],
//         ),
//         body: GetBuilder<OnboardController>(
//           builder: (value) => Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset(pages[value.index].img),
//               Container(
//                 height: 10.0.h,
//                 child: GetBuilder<OnboardListController>(
//                   builder: (value) => Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.symmetric(horizontal: 3.0.w),
//                         width: 25.0.w,
//                         height: 8.0.h,
//                         decoration: BoxDecoration(
//                           color: mainDarkColor,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Text(
//                 pages[value.index].text,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: largeSize,
//                   fontFamily: semiBold,
//                   color: textBlackColor,
//                 ),
//               ),
//               Text(
//                 pages[value.index].desc,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: largeSize,
//                   fontFamily: semiBold,
//                   color: textBlackColor,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _OnboardPageState extends State<OnboardPage> {
//   int currentIndex = 0;
//   late PageController _onboardController;
//   List<OnboardModel> pages = <OnboardModel>[
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_1,
//       desc: DECS_ONBOARD_1,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//     OnboardModel(
//       img: imgOnboard1,
//       text: ONBOARD_2,
//       desc: DECS_ONBOARD_2,
//       bg: bgWhiteColor,
//       button: ButtonGradientWidget(
//         toUpperCase: false,
//         text: NEXT,
//         onPressed: () {},
//       ),
//     ),
//   ];

//   @override
//   void _initState() {
//     _onboardController = PageController(initialPage: 0);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
