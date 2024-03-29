import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider_shop_app/models/product.dart';

class ProductData extends ChangeNotifier {
  List<Product> _allProducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  UnmodifiableListView get allProducts {
    return UnmodifiableListView(_allProducts);
  }

  Product findById(productId) {
    return _allProducts.firstWhere((prod) => prod.id == productId);
  }
// void addProducts() {
//   _allProducts.add(value);
//   notifyListeners();
// }
}
