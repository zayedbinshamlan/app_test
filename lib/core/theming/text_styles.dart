import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32BlackMedium = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.blackColor);

  static TextStyle font12BlackRegular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.blackColor);

  static TextStyle font12PinkMedium = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.pinkColor);

  static TextStyle font16PinkRegular = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.pinkColor);
  static TextStyle font14WhiteMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.backgroundWhiteColor);

}
