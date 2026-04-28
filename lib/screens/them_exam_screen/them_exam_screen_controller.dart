part of 'them_exam_screen_view.dart';

class ThemExamScreenController extends GetxController {
  var box = GetStorage();
  var value = 100.0.obs;
  void changeTheme(ThemeMode mode) async {
    // Get.changeTheme(AppColor.darkMode());

    await box.write("isDark", mode == ThemeMode.dark ? true : false);

    Get.changeThemeMode(mode);

    // RxDouble value = 0.0.obs;
  }
}
