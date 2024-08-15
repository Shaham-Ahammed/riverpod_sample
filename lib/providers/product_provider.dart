import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'product_provider.g.dart';

final List<Product> allProducts = [
  Product(
      id: "1", title: "bag", price: 200, image: "assets/products/backpack.png"),
  Product(
      id: "2", title: "drum", price: 250, image: "assets/products/drum.png"),
  Product(
      id: "3",
      title: "guitar",
      price: 550,
      image: "assets/products/guitar.png"),
  Product(
      id: "4", title: "jeans", price: 1200, image: "assets/products/jeans.png"),
  Product(
      id: "5", title: "karati", price: 10, image: "assets/products/karati.png"),
  Product(
      id: "6", title: "shorts", price: 50, image: "assets/products/shorts.png"),
  Product(
      id: "7",
      title: "skates",
      price: 2200,
      image: "assets/products/skates.png"),
  Product(
      id: "8",
      title: "suitcase",
      price: 201,
      image: "assets/products/suitcase.png"),
];

// final allProductsProvider = Provider((ref) {
//   return allProducts;
// });

final reducedProducts = Provider((ref) {
  return allProducts.where((element) => element.price > 300).toList();
});

@riverpod
List<Product> fullProducts(ref) {
  return allProducts;
}
