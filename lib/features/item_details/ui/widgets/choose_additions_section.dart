import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/core/widgets/custom_container_with_title.dart';
import 'package:zayed_test/features/item_details/ui/widgets/choose_additions_list_view.dart';

class ChooseAdditionsSection extends StatefulWidget {
  const ChooseAdditionsSection({super.key});

  @override
  State<ChooseAdditionsSection> createState() => _ChooseAdditionsSectionState();
}

class _ChooseAdditionsSectionState extends State<ChooseAdditionsSection> {
  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
        padding: EdgeInsets.only(top: 16.h),
        optionalWidget: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18.0.w),
              child: Text('Choose additions',
                  style:
                      TextStyles.font32BlackMedium.copyWith(fontSize: 18.sp)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 2.h),
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border:
                      Border.all(width: 1.w, color: const Color(0xffDADBE1))),
              child: Align(
                child: Text(
                  'Select up to 3',
                  style: TextStyles.font12BlackRegular
                      .copyWith(color: const Color(0xff524344)),
                ),
              ),
            )
          ],
        ),
        widget: const ChooseAdditionsListView());
  }
}
