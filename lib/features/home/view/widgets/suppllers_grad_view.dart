import 'package:flutter/material.dart';

import 'product_card.dart';

class SuppllersGradView extends StatelessWidget {
  const SuppllersGradView({super.key});

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
        itemCount: 2, // Replace with dynamic product count
        itemBuilder: (context, index) {
          return ProductCard(
            productName: 'Product${index + 1}',
            price: '\$300',
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
