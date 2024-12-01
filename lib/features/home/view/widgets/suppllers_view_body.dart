import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira/core/theming/colors.dart';
import 'package:luxira/core/theming/styles.dart';
import 'package:luxira/features/home/view/widgets/suppllers_grad_view.dart';

class SuppllersViewBody extends StatelessWidget {
  const SuppllersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Column(
        children: [
          44.verticalSpace,
          Center(
            child: Container(
              height: 202.h,
              width: 374.w,
              decoration: BoxDecoration(
                  color: AppColors.textGray,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          24.verticalSpace,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moahand Adel',
                    style: TextStyles.font20Medium
                        .copyWith(fontFamily: "Poppnis"),
                  ),
                  4.verticalSpace,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Cairo',
                      style: TextStyles.font17Regular.copyWith(
                          fontFamily: "Poppnis", color: AppColors.textGray),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.message)
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // About Section
                const Text(
                  "About",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "We provide high-quality glass products known for clarity and durability, ideal for various applications.",
                  style: TextStyles.font16Regular.copyWith(
                    fontFamily: "Poppnis",
                    color: AppColors.textGray,
                  ),
                ),
                const SizedBox(height: 16),

                // Products Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Products",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle "See All" functionality
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          16.verticalSpace,
          SuppllersGradView()
        ],
      ),
    ));
  }
}
