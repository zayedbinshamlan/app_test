import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/helpers/spacing.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/core/widgets/custom_container_with_title.dart';

class ItemDetailsSection extends StatelessWidget {
  const ItemDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
        title: 'Summer Sushi Platter',
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(6),
            Text(
                'Fresh and colorful, expertly made with the freshest succulent shrimp, creamy avocado, and tangy pickled ginger. A drizzle of our signature sauce adds the perfect finishing touch.',
                style: TextStyles.font12BlackRegular
                    .copyWith(fontSize: 14.sp, color: const Color(0xff524344))),
            verticalSpace(6),
            Text(
              '436 Calories',
              style: TextStyles.font16PinkRegular.copyWith(fontSize: 14.sp),
            ),
          ],
        ));
  }
}
