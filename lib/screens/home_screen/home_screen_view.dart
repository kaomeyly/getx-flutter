import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homescreen_controller.dart';

class HomeScreenView extends GetView<HomescreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name  :  ${controller.arg.fullname}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Email          :  ${controller.arg.email}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Password  :  ${controller.arg.password}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
