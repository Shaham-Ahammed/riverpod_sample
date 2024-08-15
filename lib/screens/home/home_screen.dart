import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/notifier_provider.dart';
import 'package:riverpod_files/providers/product_provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(fullProductsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final item = allProducts[index];
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                  Image.asset(
                    item.image,
                    width: 50,
                    height: 50,
                  ),
                  Text(item.title),
                  Text("Price : ${item.price}"),
                  cartProducts.any(
                    (element) => element.id == item.id,
                  )
                      ? TextButton(
                          onPressed: () {
                            ref
                                .read(cartNotifierProvider.notifier)
                                .removeProduct(item);
                          },
                          child: Text("remove"))
                      : TextButton(
                          onPressed: () {
                            ref
                                .read(cartNotifierProvider.notifier)
                                .addProduct(item);
                          },
                          child: Text("add to cart"))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
