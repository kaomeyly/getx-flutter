import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle appStyle() {
    return Get.locale == Locale("kmKH")
        ? GoogleFonts.googleSans(height: 1.5)
        : GoogleFonts.spaceGrotesk(height: 1);
  }
}
