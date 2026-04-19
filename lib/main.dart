import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_project/routes/app_pages.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.spaceGroteskTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      getPages: AppPages.getPages,
    );
  }
}
