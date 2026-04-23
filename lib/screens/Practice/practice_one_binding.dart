import 'package:get/get.dart';
import 'package:getx_project/screens/Practice/practice_one_controller.dart';

class PracticeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PracticeOneController());
  }
}
