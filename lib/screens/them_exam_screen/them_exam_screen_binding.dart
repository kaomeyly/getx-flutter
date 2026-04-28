part of 'them_exam_screen_view.dart';

class ThemExamScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemExamScreenController());
  }
}
