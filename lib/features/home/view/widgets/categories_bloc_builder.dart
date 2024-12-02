



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxira/core/theming/colors.dart';
import 'package:luxira/features/home/view/widgets/categories_list_view.dart';
import 'package:luxira/features/home/viewModel/categories_cubit/categories_cubit.dart';
import 'package:luxira/features/home/viewModel/categories_cubit/categories_state.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(builder: (context, state) {
      return state.when(
        initial: () => const Center(child: Text('No Categories Loaded')),
        loading: () => const Center(
            child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        )),
        loaded: (categories) => CategoriesListView(
          categories: categories,
        ),
        error: (error) => Center(child: Text('Error: $error')),
      );

    });
  }
}