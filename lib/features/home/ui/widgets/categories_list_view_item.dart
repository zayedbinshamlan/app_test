import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/features/home/data/categories_list.dart';

class CategoriesListViewItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final Function()? onTap;
  const CategoriesListViewItem(
      {super.key,
      required this.index,
      required this.selectedIndex,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 4.h, left: index == 0 ? 6.w : 0.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: index == selectedIndex
            ? BoxDecoration(
                border: Border(
                    top: BorderSide(color: AppColors.pinkColor, width: 2.5.w)))
            : null,
        child: Align(
          child: Text(
            categoriesList[index].categoryName,
            style: index == selectedIndex
                ? TextStyles.font12PinkMedium.copyWith(fontSize: 14.sp)
                : TextStyles.font32BlackMedium.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.blackColor.withOpacity(0.6)),
          ),
        ),
      ),
    );
  }
}
