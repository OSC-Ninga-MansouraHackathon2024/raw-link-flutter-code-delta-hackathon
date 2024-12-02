import 'package:flutter/material.dart';
import 'package:luxira/core/helper/extensions.dart';
import 'package:luxira/features/home/view/widgets/products_bloc_builder.dart';
import 'package:luxira/features/home/view/widgets/suppllers_grad_view.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [16.verticalSpace, ProductsBlocBuilder()],
      ),
    );
  }
}
