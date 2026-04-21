import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/routes/app_routes.dart';

import 'homescreen_controller.dart';

class HomeScreenView extends GetView<HomescreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name  :  ${controller.user!.fullname}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Email          :  ${controller.user!.email}",
              style: TextStyle(fontSize: 20),
            ),
            Text("Password  :  ", style: TextStyle(fontSize: 20)),

            ElevatedButton(
              onPressed: () {
                var box = GetStorage();
                // box.remove("key");
                box.erase();
                Get.toNamed(AppRoutes.login);
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
