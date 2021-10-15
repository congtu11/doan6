import 'package:daoan6/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  int selectedSize = 0;
  List<String> size = ["S","M","L","XL"];
  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedColor = index;
                });

              },
              child: ColorDot(
                color: widget.product.colors[index],
                isSelected: index == selectedColor,
              ),
            ),
          ),
          SizedBox(width: 5,),
          ...List.generate(
            size.length,
                (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedSize = index;
                });

              },
              child: Size(
                size: size[index],
                isSelected: index == selectedSize,
              ),
            ),
          ),

          // RoundedIconBtn(
          //   icon: Icons.remove,
          //   press: () {},
          // ),
          // SizedBox(width: getProportionateScreenWidth(20)),
          // RoundedIconBtn(
          //   icon: Icons.add,
          //   showShadow: true,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
class Size extends StatelessWidget {
  const Size({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  final String size;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1),
      padding: EdgeInsets.all(getProportionateScreenWidth(6)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
        Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black26,
          shape: BoxShape.circle,
        ),
        child: Center(child: Text(size)),
      ),
    );
  }
}
