import 'package:get/get.dart';
import 'package:xin9k/src/controller/product_controller.dart';

class ProductListScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
    print("object");
  }
}
