import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:luxira/features/home/data/model/categores_response.dart';
import 'package:luxira/features/home/view/widgets/product_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, this.categories});
  final List<ListElement>? categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories?.length ?? 0,
          itemBuilder: (context, index) {
            final category = categories?[index];
            return ProductItem(
              image: category?.id ??
                  '', // Get the first image or a default empty string
              title: category?.name ?? 'No Title',
            );

            // Use a fallback title if null
          }),
    );
  }
}
