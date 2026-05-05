part of 'product_screen_view.dart';

class ProductScreenViewController extends GetxController {
  var test = 0;
  var product = [].obs;
  var isLoading = false.obs;

  ProductModel? productData;

  void getProduct() async {
    isLoading.value = true;
    var apiService = ApiService();

    product.value = await apiService.getProduct();
    isLoading.value = false;
    debugPrint("Product : $product");
  }

  @override
  void onInit() {
    super.onInit();
    getProduct();
    debugPrint("onInt is called");
  }
}
