import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xin9k/core/app_icon.dart';
import 'package:xin9k/core/app_color.dart';
import 'package:xin9k/src/model/product.dart';
import 'package:xin9k/core/app_extension.dart';
import 'package:xin9k/src/view/widget/empty_widget.dart';
import 'package:xin9k/src/controller/product_controller.dart';

final ProductController controller = Get.put(ProductController());

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorite screen",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: EmptyWidget(
        type: EmptyWidgetType.favorite,
        title: "Empty favorite",
        condition: controller.favoriteProduct.isNotEmpty,
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemCount: controller.favoriteProduct.length,
          itemBuilder: (_, index) {
            Product product = controller.favoriteProduct[index];
            return Card(
              color: controller.isLightTheme
                  ? Colors.white
                  : DarkThemeColor.primaryLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                title: Text(
                  product.name!,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                leading: Image.network(
                    'https://png.pngtree.com/png-clipart/20230504/original/pngtree-medicine-flat-icon-png-image_9138002.png'),
                subtitle: Text(
                  "product.description",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                trailing: const Icon(AppIcon.heart, color: Colors.redAccent),
              ),
            ).fadeAnimation(index * 0.6);
          },
          separatorBuilder: (_, __) {
            return const Padding(padding: EdgeInsets.only(bottom: 15));
          },
        ),
      ),
    );
  }
}
