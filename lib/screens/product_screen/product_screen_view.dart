import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/API/api_service.dart';
import 'package:getx_project/model/product_model.dart';

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
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.product.length,
                itemBuilder: (context, index) {
                  var product = ProductModel.fromJson(
                    controller.product[index],
                  );
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network("https:${product.image}"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              product.name,
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  " Price : ${controller.product[index]["price"]}",
                                ),
                                Text(
                                  " ${controller.product[index]["price_sign"]}",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
