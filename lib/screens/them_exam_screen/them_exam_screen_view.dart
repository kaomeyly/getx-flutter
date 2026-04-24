import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/core/constants/app_color.dart';
import 'package:getx_project/core/constants/appfonts.dart';

part 'them_exam_screen_binding.dart';
part 'them_exam_screen_controller.dart';

class ThemExamScreenView extends GetView<ThemExamScreenViewController> {
  const ThemExamScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Screen",
          // style: Get.textTheme.bodyLarge!.copyWith(fontSize: 30),
          style: TextTheme.of(context).bodyLarge!.copyWith(fontSize: 30),
        ),
      ),

      body: Column(
        children: [
          Text(
            "ស្វាគមន៏ អ្នកទាំងអស់គ្នា".tr,
            style: AppFonts.appStyle().copyWith(
              fontSize: 30,
              color: Get.theme.colorScheme.secondary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.changeTheme(AppColor.darkMode());
                },

                child: Text("Dark Mode"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Get.changeTheme(AppColor.lightMode());
                },

                child: Text("Light Mode"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
