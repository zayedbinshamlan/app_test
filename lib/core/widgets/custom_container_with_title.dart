import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';

class CustomContainerWithTitle extends StatelessWidget {
  final String? title;
  final Widget widget;
  final Widget? optionalWidget;
  final EdgeInsetsGeometry? padding;
  const CustomContainerWithTitle(
      {super.key,
      this.title,
      required this.widget,
      this.optionalWidget,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.5.w, color: AppColors.dividerColor))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          optionalWidget ??
              Text(
                title!,
                style: TextStyles.font18BlackMedium,
              ),
          widget
        ],
      ),
    );
  }
}
