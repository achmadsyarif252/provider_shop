import 'package:flutter/material.dart';
import 'package:provider_shop_app/widgets/product_grid.dart';


class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductGrid(),
    );
  }
}
