part of 'login_screen_view.dart';

class LoginScreenViewController extends GetxController {
  var isHidePassword = true.obs;
  var fnCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();
  var box = GetStorage();

  var rememberMe = true.obs;
  void togglePassword() {
    isHidePassword.value = !isHidePassword.value;
  }

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  void login() async {
    await box.write(
      "user",
      LoginScreenArgument(
        fullname: fnCtrl.text,
        email: emailCtrl.text,
        password: passwordCtrl.text,
      ),
    );

    await box.write("isLogin", true);
    Get.toNamed(AppRoutes.home);
  }
}
