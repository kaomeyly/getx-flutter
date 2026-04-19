part of 'login_screen_view.dart';

class LoginScreenViewController extends GetxController {
  var isHidePassword = true.obs;
  var rememberMe = false.obs;
  void togglePassword() {
    isHidePassword.value = !isHidePassword.value;
  }

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }
}
