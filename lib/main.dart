import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/localization/language/localization_service.dart';
import 'package:getx_project/routes/app_pages.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'localization/app_translataton.dart';

void main() async {
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var box = GetStorage();
    var isLogin = box.read("isLogin") ?? false;

    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.spaceGroteskTextTheme()),
      debugShowCheckedModeBanner: false,
      
      translations: AppTranslataton(),
      locale: LocalizationService().getLocal(),
      initialRoute: AppRoutes.practiceOne,
      // initialRoute: AppRoutes.login,
      getPages: AppPages.getPages,
    );
  }
}
