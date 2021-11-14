import 'package:flutter/material.dart';
import 'package:daoan6/values/colors.dart';
import 'package:daoan6/values/dimen.dart';
import 'package:daoan6/values/fonts.dart';
import 'package:daoan6/values/styles.dart';

class TextFieldWidget extends StatefulWidget {
  final String? title;
  final String? hint;
  final TextEditingController? textController;
  final TextInputAction? textAction;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final double? radius;
  final Color? borderColor;
  final Color? borderEnableColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final double width;
  final double height;
  final Color? bgColor;
  final BorderSide? enableBorder;
  final TextStyle? hintTextStytle;

  const TextFieldWidget({
    Key? key,
    this.title,
    this.hint,
    this.textController,
    this.textAction,
    this.prefixIcon,
    this.focusNode,
    this.textInputType,
    this.radius,
    this.borderColor,
    this.prefixIconColor,
    required this.width,
    required this.height,
    this.bgColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.borderEnableColor,
    this.enableBorder,
    this.hintTextStytle,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextFieldWidgetState();
  }
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  Widget build(BuildContext context) => Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: widget.bgColor ?? orangeLightColor,
            borderRadius: BorderRadius.circular(widget.radius ?? 15)),
        child: Center(
          child: TextField(
            style: inputTextStyle,
            controller: widget.textController,
            keyboardType: widget.textInputType,
            maxLines: 1,
            focusNode: widget.focusNode,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: widget.hintTextStytle ?? inputHintTextStyle,
                prefixIcon: Icon(
                  widget.prefixIcon,
                  color: widget.prefixIconColor ?? null,
                ),
                suffixIcon: Icon(
                  widget.suffixIcon,
                  color: widget.suffixIconColor ?? null,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.radius ?? 15),
                  borderSide: BorderSide(
                    color: widget.borderColor ?? orangeDarkColor,
                    width: 0.5,
                  ),
                ),
                border: InputBorder.none),
          ),
        ),
      );
}
