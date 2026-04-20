import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:getx_project/screens/login_screen/login_screen_argument.dart';
import 'package:getx_project/widgets/textfield/custom_txtfield.dart';

part 'login_screen_binding.dart';
part 'login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenViewController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLXuM2b4djVbMt63hftHrWFFMeQmccyytKlQ&s",
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My First App",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 1),
                Text(
                  "by Flutter framework",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "SING IN OR CREATE \nAN ACCOUNT",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Help beginners to learn Flutter framework with GetX state management package.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 40),
              CustomTxtfield(
                hintText: "Full name",
                txtController: controller.fnCtrl,
              ),
              SizedBox(height: 20),
              CustomTxtfield(
                hintText: "Email",
                txtController: controller.emailCtrl,
              ),
              SizedBox(height: 20),
              Obx(
                () => CustomTxtfield(
                  hintText: "Password",
                  txtController: controller.passwordCtrl,
                  isPass: true,
                  isHide: controller.isHidePassword.value,
                  suffixIcons: GestureDetector(
                    onTap: () {
                      controller.togglePassword();
                    },
                    child: Icon(
                      controller.isHidePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => Row(
                  children: [
                    Checkbox(
                      activeColor: const Color.fromARGB(255, 26, 83, 28),
                      value: controller.rememberMe.value,
                      onChanged: (value) => controller.toggleRememberMe(),
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            26,
                            77,
                            28,
                          ),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // side: BorderSide(width: 2, color: Colors.brown),
                          // shadowColor: Colors.brown,
                          // elevation: 5,
                        ),
                        onPressed: () {
                          controller.login();
                        },
                        child: Text("Continue", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide(width: 2, color: Colors.brown),
                        ),
                        onPressed: () {},
                        child: Text("As Guest", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hinttext, IconData icon, IconData icons) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.black, size: 30),
            suffixIcon: Icon(icons, color: Colors.black, size: 30),
            hintText: hinttext,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 2, color: Colors.brown),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 2, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
