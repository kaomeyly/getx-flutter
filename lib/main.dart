import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_project/routes/app_pages.dart';
import 'package:getx_project/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      getPages: AppPages.getPages,
    );
  }
}
