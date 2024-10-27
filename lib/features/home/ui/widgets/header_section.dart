import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.0.w, right: 18.w, top: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Menu', style: TextStyles.font32BlackMedium),
          SvgPicture.asset(AppImages.searchIcon)
        ],
      ),
    );
  }
}
