import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/core/widgets/custom_container_with_title.dart';

class NotesSection extends StatelessWidget {
  const NotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
        title: 'Notes',
        widget: TextField(
          decoration: InputDecoration(
              hintText: 'Add a Note',
              hintStyle:
                  TextStyles.font12BlackRegular.copyWith(fontSize: 14.sp),
              contentPadding: EdgeInsets.zero,
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
        ));
  }
}
