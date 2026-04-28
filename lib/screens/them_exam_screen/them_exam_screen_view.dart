import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/core/constants/appfonts.dart';
import 'package:getx_project/localization/language/localization_service.dart';

part 'them_exam_screen_binding.dart';
part 'them_exam_screen_controller.dart';

class ThemExamScreenView extends GetView<ThemExamScreenController> {
  const ThemExamScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Screen",
          style: TextTheme.of(context).bodyLarge!.copyWith(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Text("welcome".tr, style: AppFonts.appStyle().copyWith(fontSize: 30)),
          Text(
            "welcome".tr,
            style: AppFonts.appStyle().copyWith(
              color: Get.theme.colorScheme.secondary,
              fontSize: 30,
            ),
          ),

          Text(
            "welcome".tr,
            style: AppFonts.appStyle().copyWith(
              color: Get.isDarkMode ? Colors.blue : Colors.pink,
              fontSize: 30,
            ),
          ),

          Text("Hello"),

          ElevatedButton(
            onPressed: () {
              controller.changeTheme(ThemeMode.dark);
            },
            child: Text("Change to dark mode"),
          ),
          ElevatedButton(
            onPressed: () {
              controller.changeTheme(ThemeMode.light);
            },
            child: Text("Change to light mode"),
          ),

          ElevatedButton(
            onPressed: () {
              LocalizationService().changeLocale("enUS");
            },
            child: Text("Change English"),
          ),
          Obx(
            () => Text(
              "Balance : ${controller.value.value.toStringAsFixed(2)} \$",
            ),
          ),
          Obx(
            () => Slider(
              min: 10.0,
              max: 1000.0,
              divisions: 90,
              value: controller.value.value,
              onChanged: (value) {
                controller.value.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
