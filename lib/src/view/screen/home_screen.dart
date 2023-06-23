import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xin9k/core/app_data.dart';
import 'package:xin9k/src/view/screen/cart_screen.dart';
import 'package:xin9k/src/view/screen/profile_screen.dart';
import 'package:xin9k/src/controller/product_controller.dart';
import 'package:xin9k/src/view/screen/favorite_screen.dart';
import 'package:xin9k/src/view/widget/page_transition.dart';
import 'package:xin9k/src/view/screen/product_list_screen.dart';

final ProductController controller = Get.put(ProductController());

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> screen = [
    const ProductListScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => PageTransition(
          child: screen[controller.currentBottomNavItemIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentBottomNavItemIndex.value,
          onTap: controller.switchBetweenBottomNavigationItems,
          selectedFontSize: 0,
          items: AppData.bottomNavigationItems.map(
            (element) {
              return BottomNavigationBarItem(
                icon: element.disableIcon,
                label: element.label,
                activeIcon: element.enableIcon,
              );
            },
          ).toList(),
        );
      }),
    );
  }
}
