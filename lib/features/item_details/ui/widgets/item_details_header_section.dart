import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/helpers/extensions.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class ItemDetailsHeaderSection extends StatelessWidget {
  const ItemDetailsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.w, top: 16.h, bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: const Icon(Icons.arrow_back_ios,
                        color: AppColors.pinkColor)),
                Text('Menu', style: TextStyles.font16PinkRegular)
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Text('Chicken egg bowl',
                  style:
                      TextStyles.font32BlackMedium.copyWith(fontSize: 18.sp)))
        ],
      ),
    );
  }
}
