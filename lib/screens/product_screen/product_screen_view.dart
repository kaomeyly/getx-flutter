import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/API/api_service.dart';

part 'product_screen_binding.dart';
part 'product_screen_controller.dart';

class ProductScreenView extends GetView<ProductScreenViewController> {
  const ProductScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Screen")),
      body: Obx(
        () => controller.isLoading.value
            ? CircularProgressIndicator()
            : Text("Product Name : ${controller.product[0]["name"]}"),
      ),
    );
  }
}
