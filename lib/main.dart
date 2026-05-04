import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/localization/app_translataton.dart';
import 'package:getx_project/localization/language/localization_service.dart';
import 'package:getx_project/routes/app_pages.dart';
import 'package:getx_project/routes/app_routes.dart';

import 'core/constants/app_color.dart';

void main() async {
  await GetStorage.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var box = GetStorage();

    var isDark = box.read("isDark") ?? false;
    debugPrint("isDark $isDark");
    return GetMaterialApp(
      initialRoute: AppRoutes.product,

      debugShowCheckedModeBanner: false,

      theme: AppColor.lightMode(), //light mode
      darkTheme: AppColor.darkMode(), //dark mode
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light, //defualt mode

      translations: AppTranslataton(),
      locale: LocalizationService().getLocal(),
      getPages: AppPages.getPages,
    );
  }
}
