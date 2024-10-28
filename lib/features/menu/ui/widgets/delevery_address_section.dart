import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class DeleveryAddressSection extends StatelessWidget {
  const DeleveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: AppColors.lightGrayishPinkColor,
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppImages.deliveryIcon),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery', style: TextStyles.font12PinkMedium),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    'RHYA3696, 3696 Al Imam Saud Ibn Abdul Aziz Brand Road,',
                    style:
                        TextStyles.font14BlackRegular
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset(AppImages.forwardIcon),
        ],
      ),
    );
  }
}