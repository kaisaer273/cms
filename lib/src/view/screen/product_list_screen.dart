import 'package:get/get.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xin9k/src/controller/product_controller.dart';
import 'package:xin9k/src/view/widget/product_list_view.dart';

import '../widget/empty_widget.dart';

// final ProductController controller = Get.put(ProductController());

class ProductListScreen extends GetView<ProductController> {
  const ProductListScreen({Key? key}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(FontAwesomeIcons.dice),
        onPressed: controller.changeTheme,
      ),
      title: Text(
        "Danh sách sản phẩm",
        style: Theme.of(context).textTheme.displaySmall,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_scanner_outlined,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: TextField(
        onChanged: (value) => controller.filterproduct(value),
        decoration: const InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchBar(),
            const Divider(
              thickness: 2,
              color: Colors.amber,
              height: 10,
            ),
            Obx(
              () => Expanded(
                child: EmptyWidget(
                  title: "Không có sản phẩm",
                  condition: controller.filteredProducts.isNotEmpty,
                  child: GetBuilder(
                    builder: (ProductController controller) {
                      return ProductListView(
                        products: controller.filteredProducts,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
