import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/screens/Practice/practice_one_controller.dart';

class PracticeOneView extends GetView<PracticeOneController> {
  const PracticeOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(children: [_buildAppbar()]),
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage("assets/imgs/profile.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KAO MEYLY",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "what you wanna do today?",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/flatuk.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text("English"),
            ],
          ),
        ),
      ],
    );
  }
}
