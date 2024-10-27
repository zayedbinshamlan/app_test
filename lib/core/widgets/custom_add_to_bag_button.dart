import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class CustomAddToBagButton extends StatelessWidget {
  final String title;
  final String price;
  const CustomAddToBagButton({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 16.5.h, 20.w, 13.5.h),
      margin: EdgeInsets.only(right: 18.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.pinkColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.font14WhiteMedium),
          Text(price, style: TextStyles.font14WhiteMedium)
        ],
      ),
    );
  }
}