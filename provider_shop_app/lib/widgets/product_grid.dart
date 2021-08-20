import 'package:flutter/material.dart';
import 'package:provider_shop_app/provider/producst_data.dart';
import 'package:provider_shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final producData = Provider.of<ProductData>(context);
    final allProducts = producData.allProducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProducts[i].id,
        allProducts[i].title,
        allProducts[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
