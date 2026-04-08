import 'package:get/get.dart';
import 'package:getx_project/screens/home_screen/homescreen_controller.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomescreenController());
  }
}
