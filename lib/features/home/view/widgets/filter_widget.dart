import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxira/core/theming/colors.dart';
import 'package:luxira/core/theming/styles.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Container(
      width: width * 55.59 / 428,
      height: height * 45 / 932,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryColor),
        color: Colors.white,
      ),
      child: Center(
          child: Image.asset(
        'assets/images/setting-4.png',
        fit: BoxFit.contain,
        height: height * 27.23 / 932,
        width: width * 27.23 / 428,
      )),
    );
  }
}
