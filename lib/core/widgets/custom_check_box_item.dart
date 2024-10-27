import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/font_weight_helper.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class CustomCheckBoxItem extends StatelessWidget {
  final String title;
  final String price;
  final bool value;
  final Function(bool?) onChanged;

  const CustomCheckBoxItem(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: AppColors.pinkColor,
          value: value,
          onChanged: onChanged,
        ),
        Expanded(
            child: Text(
          title,
          style: value == true
              ? TextStyles.font32BlackMedium
                  .copyWith(fontSize: 14.sp, fontWeight: FontWeightHelper.bold)
              : TextStyles.font12BlackRegular.copyWith(fontSize: 14.sp),
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Text(
            price,
            style: TextStyles.font12BlackRegular.copyWith(
                fontSize: 14.sp,
                color: value == true ? AppColors.pinkColor : null),
          ),
        ),
      ],
    );
  }
}
