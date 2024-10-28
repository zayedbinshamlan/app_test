// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/core/widgets/custom_add_to_bag_button.dart';

class AddToBagSection extends StatefulWidget {
  const AddToBagSection({super.key});

  @override
  State<AddToBagSection> createState() => _AddToBagSectionState();
}

class _AddToBagSectionState extends State<AddToBagSection> {
  int itemCount = 1;

  void itemIncreament() {
    setState(() {
      itemCount++;
    });
  }

  void itemDecreament() {
    if (itemCount != 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 0.5.w, color:AppColors.dividerColor))),
      child: Row(
        children: [
          Container(
            width: 123.w,
            margin: EdgeInsets.only(left: 18.w, right: 11.w),
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.lightGrayishPinkColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => itemDecreament(),
                  child: SvgPicture.asset(
                    AppImages.minusIcon,
                    color: AppColors.blackColor.withOpacity(0.4),
                  ),
                ),
                Text(
                  '$itemCount',
                  style: TextStyles.font18BlackMedium,
                ),
                GestureDetector(
                    onTap: () => itemIncreament(),
                    child: SvgPicture.asset(AppImages.addIcon,
                        width: 16.w, height: 16.h))
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: CustomAddToBagButton(
              title: 'Add to bag',
              price: 'SAR 51.00',
            ),
          )
        ],
      ),
    );
  }
}
