part of 'product_screen_view.dart';

class ProductScreenViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductScreenViewController());
  }
}
