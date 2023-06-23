import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:xin9k/core/app_color.dart';
import 'package:xin9k/src/model/product.dart';
import 'package:xin9k/core/app_extension.dart';
import 'package:xin9k/src/view/widget/counter_button.dart';
import 'package:xin9k/src/controller/product_controller.dart';
import 'package:xin9k/src/view/widget/scale_animation.dart';

final ProductController controller = Get.put(ProductController());

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${product.name}",
          style: TextStyle(
            color: controller.isLightTheme ? Colors.black : Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.transparent,
      //   child: SizedBox(
      //     height: height * 0.5,
      //     child: Container(
      //       decoration: BoxDecoration(
      //         color: controller.isLightTheme
      //             ? Colors.white
      //             : DarkThemeColor.primaryLight,
      //         borderRadius: const BorderRadius.only(
      //           topLeft: Radius.circular(30),
      //           topRight: Radius.circular(30),
      //         ),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.all(30),
      //         child: SingleChildScrollView(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               const SizedBox(height: 15),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "\$${product.salePrice}",
      //                     style: Theme.of(context)
      //                         .textTheme
      //                         .displayLarge
      //                         ?.copyWith(color: LightThemeColor.accent),
      //                   ),
      //                   GetBuilder(
      //                     builder: (ProductController productController) {
      //                       return CounterButton(
      //                         onIncrementSelected: () =>
      //                             productController.increaseItem(product),
      //                         onDecrementSelected: () =>
      //                             productController.decreaseItem(product),
      //                         label: Text(
      //                           controller.productValue(product).toString(),
      //                           style: Theme.of(context).textTheme.displayLarge,
      //                         ),
      //                       );
      //                     },
      //                   )
      //                 ],
      //               ).fadeAnimation(0.6),
      //               const SizedBox(height: 15),
      //               Text(
      //                 "Description",
      //                 style: Theme.of(context).textTheme.displayMedium,
      //               ).fadeAnimation(0.8),
      //               const SizedBox(height: 15),
      //               Text(
      //                 "product.description",
      //                 style: Theme.of(context).textTheme.titleMedium,
      //               ).fadeAnimation(0.8),
      //               const SizedBox(height: 30),
      //               SizedBox(
      //                 width: double.infinity,
      //                 height: 45,
      //                 child: Padding(
      //                   padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      //                   child: ElevatedButton(
      //                     onPressed: () => controller.addToCart(product),
      //                     child: const Text("Add to cart"),
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: ScaleAnimation(
        child: Center(
            child: Image.network(
                "https://png.pngtree.com/png-clipart/20230504/original/pngtree-medicine-flat-icon-png-image_9138002.png",
                scale: 2)),
      ),
    );
  }
}
