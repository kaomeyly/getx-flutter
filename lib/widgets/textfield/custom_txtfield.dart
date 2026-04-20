import 'package:flutter/material.dart';

class CustomTxtfield extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcons;
  final bool isPass;
  final bool isHide;
  final TextEditingController? txtController;
  const CustomTxtfield({
    super.key,
    required this.hintText,
    required this.txtController,
    this.suffixIcons,
    this.isPass = false,
    this.isHide = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      obscureText: isPass && isHide,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcons,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 26, 77, 28),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 2, color: Colors.brown),
        ),
      ),
    );
  }
}
