import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
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
                ? TextStyles.font14BlackBold
                : TextStyles.font14BlackRegular,
          )),
          Text(
            price,
            style: TextStyles.font14BlackRegular
                .copyWith(color: AppColors.veryDarkGrayish),
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
                      : AppColors.dividerColor),
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
