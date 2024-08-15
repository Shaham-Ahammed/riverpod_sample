import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  //initialization
  @override
  List<Product> build() {
    return const [];
  }

  //adding an item
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = [...state, product];
    }
  }

  //removing an item
  void removeProduct(Product product){

    
    final list=[...state];
    list.remove(product);
    state=list;
  }
}


@riverpod
int totalAmount(ref){
  final products = ref.watch(cartNotifierProvider);  
 int total=0;
 for(Product product in products){
  total+=product.price;
 }
 return total;
}
// final cartNotifierProvider = NotifierProvider<CartNotifier, List<Product>>(() {
//   return CartNotifier();
// });
