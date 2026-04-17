part of 'login_screen_view.dart';

class LoginScreenViewController extends GetxController {
  var isHidePassword = true.obs;
  void togglePassword() {
    isHidePassword.value = !isHidePassword.value;
  }
}
