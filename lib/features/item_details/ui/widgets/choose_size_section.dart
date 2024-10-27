import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:zayed_test/core/widgets/custom_container_with_title.dart';
import 'package:zayed_test/features/item_details/ui/widgets/sizes_list_view.dart';

class ChooseSizeSection extends StatelessWidget {
  const ChooseSizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
        title: 'Choose your size',
        widget: Padding(
          padding: EdgeInsets.only(top: 8.0.h),
          child: const SizesListView(),
        ));
  }
}
