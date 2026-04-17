import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "SING IN OR CREATE \nAN ACCOUNT",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),

            Text(
              "Help beginners to learn Flutter framework with GetX state management",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 60),
            CustomTxtfield(hintText: "Email"),
            Obx(
              () => CustomTxtfield(
                hintText: "Password",
                isPass: true,
                isHide: controller.isHidePassword.value,
                suffixIcons: GestureDetector(
                  onTap: () {
                    controller.togglePassword();
                  },
                  child: Icon(
                    controller.isHidePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility_outlined,
                  ),
                ),
              ),
            ),
          ],
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

  // Widget _buildbtn(){

  // }
}
