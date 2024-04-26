import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintext;
  final int maxLine;
  const CustomTextFieldWidget(
      {super.key, this.controller, this.hintext, this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintext,
        hintStyle: const TextStyle(color: CustomColor.hintDark),

        //hintMaxLines: maxLine
      ),
    );
  }
}

OutlineInputBorder get getInputBorder {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );
}
