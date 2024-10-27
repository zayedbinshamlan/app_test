import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/helpers/spacing.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/features/item_details/data/models/item_model.dart';

class ProductsListViewItem extends StatelessWidget {
  final Function()? onTap;
  final ItemModel itemModel;
  const ProductsListViewItem({super.key, this.onTap, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.w),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.itemImg, width: 90.w, fit: BoxFit.fill),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemModel.name,
                        style: TextStyles.font32BlackMedium
                            .copyWith(fontSize: 16.sp)),
                    verticalSpace(6),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      itemModel.description,
                      style: TextStyles.font12BlackRegular
                          .copyWith(color: const Color(0xff524344)),
                    ),
                    verticalSpace(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: 'SAR ',
                            style: TextStyles.font12PinkMedium
                                .copyWith(fontSize: 14.sp),
                            children: [TextSpan(text: '${itemModel.price}0')])),
                        Container(
                          padding: EdgeInsets.fromLTRB(7.w, 3.h, 10.w, 3.h),
                          decoration: BoxDecoration(
                            color: AppColors.pinkColor.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.addIcon,
                                width: 14.62.h,
                                height: 14.62.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0.w),
                                child: Text(
                                  'Add to cart',
                                  style: TextStyles.font12PinkMedium
                                      .copyWith(fontSize: 14.sp),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
