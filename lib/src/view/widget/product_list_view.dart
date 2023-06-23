import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:xin9k/core/app_style.dart';

import 'package:xin9k/core/app_color.dart';
import 'package:xin9k/core/app_extension.dart';
import 'package:xin9k/src/view/widget/custom_page_route.dart';

import '../../controller/product_controller.dart';
import '../../model/product.dart';
import '../screen/product_detail_screen.dart';

// final ProductController controller = Get.put(ProductController());

class ProductListView extends GetView<ProductController> {
  const ProductListView({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 20, left: 10),
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (_, index) {
        Product product = products[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CustomPageRoute(child: ProductDetailScreen(product: product)),
            );
          },
          child: Container(
            width: 160,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  Get.isDarkMode ? DarkThemeColor.primaryLight : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                      'https://png.pngtree.com/png-clipart/20230504/original/pngtree-medicine-flat-icon-png-image_9138002.png',
                      scale: 6),
                  Text(
                    "\$${product.salePrice}",
                    style: h3Style.copyWith(color: LightThemeColor.accent),
                  ),
                  Text(
                    product.name ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ).fadeAnimation(0.7),
            ),
          ),
        );
      },
      separatorBuilder: (_, __) {
        return const Padding(padding: EdgeInsets.only(bottom: 30));
      },
    );
  }
}
