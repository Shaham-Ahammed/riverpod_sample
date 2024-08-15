import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/notifier_provider.dart';


class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
                children: cartProducts.map((product) {
              return Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(
                      product.image,
                      width: 60,
                      height: 60,
                    ),
                    Text(product.title),
                    Expanded(child: SizedBox(width: 1,)),
                    Text(product.price.toString()),
                    TextButton(
                          onPressed: () {
                            ref
                                .read(cartNotifierProvider.notifier)
                                .removeProduct(product);
                          },
                          child: Text("remove"))
                  ],
                ),
              );
            }).toList() // output cart products here
                ),

            // output totals here
           Text(ref.watch(totalAmountProvider).toString())
          
          ],
        ),
      ),
    );
  }
}
