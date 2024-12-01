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

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Row(
            children: [
              SizedBox(
                  width: 306.w,
                  height: 45.38.h,
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
              Spacer(),
              FilterWidget(),
            ],
          ),
        ),
        SizedBox(
          height: 54.5.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 38),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Suppliers",
              style: TextStyles.font20Medium.copyWith(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        ProductGridView()
        // ProductItem()
      ],
    ));
  }
}
