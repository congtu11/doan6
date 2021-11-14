import 'package:flutter/material.dart';


class TextInputField extends StatelessWidget {
  const TextInputField({Key? key,required this.hintText}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 10,
            blurRadius: 10,
            // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black12),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
