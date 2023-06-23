import 'package:flutter/material.dart';
import 'package:xin9k/core/app_icon.dart';
import 'package:xin9k/src/model/product.dart';
import 'package:xin9k/src/model/product_category.dart';
import 'package:xin9k/src/model/bottom_navigation_item.dart';

class AppData {
  const AppData._();

  static const dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting "
      "industry. Lorem Ipsum has been the industry's standard dummy text ever "
      "since the 1500s, when an unknown printer took a galley of type and "
      "scrambled it to make a type specimen book. It has survived not only five "
      "centuries, but also the leap into electronic typesetting, remaining "
      "essentially unchanged. It was popularised in the 1960s with the release "
      "of Letraset sheets containing Lorem Ipsum passages, and more recently "
      "with desktop publishing software like Aldus PageMaker including versions "
      "of Lorem Ipsum.";

  static List<Product> productItems = [
    Product(
      name: 'Paracetamol',
      ingredient: 'Paracetamol',
      unit: 'Tablet',
      imgUrl: 'https://example.com/paracetamol-image.jpg',
      skuCode: 'SKU001',
      barCode: 'BC001',
      purchasePrice: 10000,
      salePrice: 15000,
      isAvaiable: true,
      numInStorage: 50,
      numSold: 100,
    ),
    Product(
      name: 'Ibuprofen',
      ingredient: 'Ibuprofen',
      unit: 'Tablet',
      imgUrl: 'https://example.com/ibuprofen-image.jpg',
      skuCode: 'SKU002',
      barCode: 'BC002',
      purchasePrice: 12000,
      salePrice: 18000,
      isAvaiable: true,
      numInStorage: 60,
      numSold: 90,
    ),
    Product(
      name: 'Aspirin',
      ingredient: 'Aspirin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/aspirin-image.jpg',
      skuCode: 'SKU003',
      barCode: 'BC003',
      purchasePrice: 8000,
      salePrice: 12000,
      isAvaiable: true,
      numInStorage: 40,
      numSold: 80,
    ),
    Product(
      name: 'Amoxicillin',
      ingredient: 'Amoxicillin',
      unit: 'Capsule',
      imgUrl: 'https://example.com/amoxicillin-image.jpg',
      skuCode: 'SKU004',
      barCode: 'BC004',
      purchasePrice: 15000,
      salePrice: 20000,
      isAvaiable: true,
      numInStorage: 70,
      numSold: 110,
    ),
    Product(
      name: 'Ciprofloxacin',
      ingredient: 'Ciprofloxacin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/ciprofloxacin-image.jpg',
      skuCode: 'SKU005',
      barCode: 'BC005',
      purchasePrice: 18000,
      salePrice: 25000,
      isAvaiable: true,
      numInStorage: 55,
      numSold: 95,
    ),
    Product(
      name: 'Loratadine',
      ingredient: 'Loratadine',
      unit: 'Tablet',
      imgUrl: 'https://example.com/loratadine-image.jpg',
      skuCode: 'SKU006',
      barCode: 'BC006',
      purchasePrice: 9000,
      salePrice: 14000,
      isAvaiable: true,
      numInStorage: 45,
      numSold: 85,
    ),
    Product(
      name: 'Omeprazole',
      ingredient: 'Omeprazole',
      unit: 'Capsule',
      imgUrl: 'https://example.com/omeprazole-image.jpg',
      skuCode: 'SKU007',
      barCode: 'BC007',
      purchasePrice: 20000,
      salePrice: 28000,
      isAvaiable: true,
      numInStorage: 75,
      numSold: 115,
    ),
    Product(
      name: 'Metformin',
      ingredient: 'Metformin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/metformin-image.jpg',
      skuCode: 'SKU008',
      barCode: 'BC008',
      purchasePrice: 11000,
      salePrice: 16000,
      isAvaiable: true,
      numInStorage: 65,
      numSold: 105,
    ),
    Product(
      name: 'Atorvastatin',
      ingredient: 'Atorvastatin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/atorvastatin-image.jpg',
      skuCode: 'SKU009',
      barCode: 'BC009',
      purchasePrice: 14000,
      salePrice: 22000,
      isAvaiable: true,
      numInStorage: 80,
      numSold: 120,
    ),
    Product(
      name: 'Simvastatin',
      ingredient: 'Simvastatin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/simvastatin-image.jpg',
      skuCode: 'SKU010',
      barCode: 'BC010',
      purchasePrice: 13000,
      salePrice: 20000,
      isAvaiable: true,
      numInStorage: 70,
      numSold: 100,
    ),
    Product(
      name: 'Levothyroxine',
      ingredient: 'Levothyroxine',
      unit: 'Tablet',
      imgUrl: 'https://example.com/levothyroxine-image.jpg',
      skuCode: 'SKU011',
      barCode: 'BC011',
      purchasePrice: 17000,
      salePrice: 24000,
      isAvaiable: true,
      numInStorage: 60,
      numSold: 95,
    ),
    Product(
      name: 'Metoprolol',
      ingredient: 'Metoprolol',
      unit: 'Tablet',
      imgUrl: 'https://example.com/metoprolol-image.jpg',
      skuCode: 'SKU012',
      barCode: 'BC012',
      purchasePrice: 12000,
      salePrice: 18000,
      isAvaiable: true,
      numInStorage: 50,
      numSold: 85,
    ),
    Product(
      name: 'Aspirin 81mg',
      ingredient: 'Aspirin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/aspirin-image.jpg',
      skuCode: 'SKU013',
      barCode: 'BC013',
      purchasePrice: 8000,
      salePrice: 14000,
      isAvaiable: true,
      numInStorage: 40,
      numSold: 75,
    ),
    Product(
      name: 'Metronidazole',
      ingredient: 'Metronidazole',
      unit: 'Tablet',
      imgUrl: 'https://example.com/metronidazole-image.jpg',
      skuCode: 'SKU014',
      barCode: 'BC014',
      purchasePrice: 16000,
      salePrice: 22000,
      isAvaiable: true,
      numInStorage: 55,
      numSold: 90,
    ),
    Product(
      name: 'Azithromycin',
      ingredient: 'Azithromycin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/azithromycin-image.jpg',
      skuCode: 'SKU015',
      barCode: 'BC015',
      purchasePrice: 19000,
      salePrice: 26000,
      isAvaiable: true,
      numInStorage: 75,
      numSold: 110,
    ),
    Product(
      name: 'Cephalexin',
      ingredient: 'Cephalexin',
      unit: 'Capsule',
      imgUrl: 'https://example.com/cephalexin-image.jpg',
      skuCode: 'SKU016',
      barCode: 'BC016',
      purchasePrice: 15000,
      salePrice: 20000,
      isAvaiable: true,
      numInStorage: 65,
      numSold: 100,
    ),
    Product(
      name: 'Fluoxetine',
      ingredient: 'Fluoxetine',
      unit: 'Capsule',
      imgUrl: 'https://example.com/fluoxetine-image.jpg',
      skuCode: 'SKU017',
      barCode: 'BC017',
      purchasePrice: 12000,
      salePrice: 18000,
      isAvaiable: true,
      numInStorage: 55,
      numSold: 90,
    ),
    Product(
      name: 'Gabapentin',
      ingredient: 'Gabapentin',
      unit: 'Capsule',
      imgUrl: 'https://example.com/gabapentin-image.jpg',
      skuCode: 'SKU018',
      barCode: 'BC018',
      purchasePrice: 13000,
      salePrice: 20000,
      isAvaiable: true,
      numInStorage: 60,
      numSold: 95,
    ),
    Product(
      name: 'Naproxen',
      ingredient: 'Naproxen',
      unit: 'Tablet',
      imgUrl: 'https://example.com/naproxen-image.jpg',
      skuCode: 'SKU019',
      barCode: 'BC019',
      purchasePrice: 11000,
      salePrice: 16000,
      isAvaiable: true,
      numInStorage: 50,
      numSold: 85,
    ),
    Product(
      name: 'Metformin XR',
      ingredient: 'Metformin',
      unit: 'Tablet',
      imgUrl: 'https://example.com/metformin-image.jpg',
      skuCode: 'SKU020',
      barCode: 'BC020',
      purchasePrice: 14000,
      salePrice: 22000,
      isAvaiable: true,
      numInStorage: 70,
      numSold: 100,
    ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(
      const Icon(Icons.home_outlined),
      const Icon(Icons.home),
      'Home',
      isSelected: true,
    ),
    BottomNavigationItem(
      const Icon(Icons.shopping_cart_outlined),
      const Icon(Icons.shopping_cart),
      'Shopping cart',
    ),
    BottomNavigationItem(
      const Icon(AppIcon.outlinedHeart),
      const Icon(AppIcon.heart),
      'Favorite',
    ),
    BottomNavigationItem(
      const Icon(Icons.person_outline),
      const Icon(Icons.person),
      'Profile',
    )
  ];

  static List<ProductCategory> categories = [
    ProductCategory(ProductType.giamdau, true),
    ProductCategory(ProductType.khangsinh, false),
    ProductCategory(ProductType.loitieu, false),
    ProductCategory(ProductType.khanghistamin, false),
    ProductCategory(ProductType.bonao, false),
    ProductCategory(ProductType.timmach, false),
  ];
}
