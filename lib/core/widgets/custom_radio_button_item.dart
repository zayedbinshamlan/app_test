import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/font_weight_helper.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class CustomRadioButtonItem extends StatelessWidget {
  final String title;
  final String price;
  final Function()? onTap;
  final int index;
  final int selectedIndex;

  const CustomRadioButtonItem({
    super.key,
    required this.onTap,
    required this.index,
    required this.selectedIndex,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: index == selectedIndex
                ? TextStyles.font32BlackMedium.copyWith(
                    fontSize: 14.sp, fontWeight: FontWeightHelper.bold)
                : TextStyles.font12BlackRegular.copyWith(fontSize: 14.sp),
          )),
          Text(
            price,
            style: TextStyles.font12BlackRegular
                .copyWith(fontSize: 14.sp, color: const Color(0xff524344)),
          ),
          Container(
            height: 20.h,
            width: 20.w,
            margin: EdgeInsets.only(left: 8.w),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1.80.w,
                  color: index == selectedIndex
                      ? AppColors.pinkColor
                      : const Color(0xffDADBE1)),
              shape: BoxShape.circle,
            ),
            child: Visibility(
              visible: index == selectedIndex ? true : false,
              child: Container(
                margin: EdgeInsets.all(2.h),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.pinkColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
