import 'package:flutter/material.dart';
import 'package:luxira/core/router/routes.dart';
import 'package:luxira/features/home/data/model/product_response.dart';
import 'package:luxira/features/home/view/widgets/product_item.dart';

class ProductHorizontalListView extends StatelessWidget {
  const ProductHorizontalListView({super.key, this.product});
  final List<ListElement>? product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Adjust height as per your UI requirement
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: product?.length ?? 0, // Number of product items
        itemBuilder: (context, index) {
          final currentProduct = product?[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.suppllersScreen);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0), // Spacing between items
              child: ProductItem(
                image: currentProduct?.images.first ??
                    '', // Get the first image or a default empty string
                title: currentProduct?.title ??
                    'No Title', // Use a fallback title if null
              ),
            ),
          );
        },
      ),
    );
  }
}
