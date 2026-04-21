import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/screens/login_screen/login_screen_argument.dart';

class HomescreenController extends GetxController {
  // var arg = Get.arguments as LoginScreenArgument;

  var box = GetStorage();

  LoginScreenArgument? user;
  void readUser() {
    // user = box.read("user");
    var data = box.read("user");

    user = LoginScreenArgument.fromMap(data);
  }

  @override
  void onInit() {
    super.onInit();
    readUser();
  }
}
