part of 'them_exam_screen_view.dart';

class ThemExamScreenViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => ThemExamScreenViewController());
   }
}