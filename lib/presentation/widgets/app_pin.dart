import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/app_colors.dart';

class AppPin extends StatelessWidget {
  final ValueChanged<String> onPressComplete;
  final ValueChanged<String> onPressChange;
  const AppPin({
    super.key, required this.onPressComplete,required this.onPressChange,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialPinField(
      length: 4,
      onCompleted: onPressComplete,
      onChanged:onPressChange, //
      theme: MaterialPinTheme(
        borderColor:AppColors.primaryColor,
        focusedFillColor:AppColors.white,
        focusedBorderColor:AppColors.primaryColor,
        filledFillColor:AppColors.white,
        cursorColor:AppColors.primaryColor,
        completeBorderColor: AppColors.primaryColor,
        shape: MaterialPinShape.outlined,
        cellSize: Size(56.sp, 56.sp),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
