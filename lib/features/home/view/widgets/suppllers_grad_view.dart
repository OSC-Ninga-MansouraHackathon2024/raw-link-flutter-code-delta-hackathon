import 'package:flutter/material.dart';
import 'package:luxira/features/home/data/model/product_response.dart';

import 'product_card.dart';

class SuppllersGradView extends StatelessWidget {
  const SuppllersGradView({super.key, this.product});
  final ListElement? product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemCount: 10, // Replace with dynamic product count
        itemBuilder: (context, index) {
          return ProductCard(
            productName: product?.title ?? 'Suppllers',
            price: product?.price.toString() ?? 0.0.toString(),
            onBuyPressed: () {
              // Handle Buy Button
            },
            onFavoritePressed: () {
              // Handle Favorite Button
            },
          );
        },
      ),
    );
  }
}
