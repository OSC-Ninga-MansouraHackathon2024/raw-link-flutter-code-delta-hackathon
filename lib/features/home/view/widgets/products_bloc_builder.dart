import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxira/core/theming/colors.dart';
import 'package:luxira/features/home/view/widgets/product_grid_view.dart';
import 'package:luxira/features/home/view/widgets/product_list_view.dart';
import 'package:luxira/features/home/view/widgets/suppllers_grad_view.dart';
import 'package:luxira/features/home/viewModel/cubit/product_cubit.dart';
import 'package:luxira/features/home/viewModel/cubit/product_state.dart';
import 'product_card.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return SizedBox(
      height: height * 240 / 932,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('No Products Loaded')),
            loading: () => const Center(
                child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            )),
            loaded: (products) => ProductHorizontalListView(
              product: products,
            ),
            error: (error) => Center(child: Text('Error: $error')),
          );
        },
      ),
    );
  }
}
