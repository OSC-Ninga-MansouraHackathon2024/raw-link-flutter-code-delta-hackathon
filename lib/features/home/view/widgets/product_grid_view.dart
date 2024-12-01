import 'package:flutter/material.dart';
import 'package:luxira/core/router/routes.dart';
import 'package:luxira/features/home/view/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 16.0, // Horizontal spacing
            mainAxisSpacing: 16.0, // Vertical spacing
            childAspectRatio: 0.8, // Aspect ratio of the cards
          ),
          itemCount: 4, // Number of product items
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                 Navigator.pushNamed(context, Routes.suppllersScreen);
              },
              
              child: ProductItem());
          },
        ),
      ),
    );
  }
}
