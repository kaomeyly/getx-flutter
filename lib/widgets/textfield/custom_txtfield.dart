import 'package:flutter/material.dart';

class CustomTxtfield extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcons;
  final bool isPass;
  final bool isHide;
  const CustomTxtfield({
    super.key,
    required this.hintText,
    this.suffixIcons,
    this.isPass = false,
    this.isHide = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPass && isHide,
      decoration: InputDecoration(hintText: hintText, suffixIcon: suffixIcons),
    );
  }
}
