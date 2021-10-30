import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'customClipPath.dart';

class TopBackground extends StatelessWidget {
  const TopBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      child: ClipPath(
        clipper: TriangleClipper(),
        child: Image.asset(
          "assets/images/Pattern.png",
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
