import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luxira/core/theming/colors.dart';
import 'package:luxira/core/theming/styles.dart';
import 'package:luxira/core/widgets/app_form_text_field.dart';
import 'package:luxira/features/home/view/widgets/filter_widget.dart';
import 'package:luxira/features/home/view/widgets/product_grid_view.dart';
import 'package:luxira/features/home/view/widgets/product_item.dart';

import 'products_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return SafeArea(
        child: Column(
      children: [
        27.5.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 27 / 932,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  child: AppTextFormField(
                      prefixIcon: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.search,
                          color: AppColors.primaryColor,
                          size: 25,
                        ),
                      ),
                      hintText: "Search here",
                      validator: (value) {})),
              Padding(
                padding: EdgeInsets.only(right: width * 22 / 932),
                child: const FilterWidget(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 54.5.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 28, right: 27),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Suppliers",
                  style: TextStyles.font20Semibold.copyWith(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "See all",
                    style: TextStyles.font20Medium.copyWith(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        //ProductGridView()
        const ProductsBlocBuilder(),

        Padding(
          padding:
              const EdgeInsets.only(left: 24, bottom: 28, right: 27, top: 28),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " materials",
                  style: TextStyles.font20Semibold.copyWith(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "See all",
                    style: TextStyles.font20Medium.copyWith(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      
      
      ],
    ));
  }
}
