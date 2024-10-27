
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/helpers/spacing.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/features/home/ui/home_screen.dart';
import 'package:zayed_test/features/home/ui/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;

  void changeSelectedIndex(int newValue) {
    setState(() {
      selectedIndex = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.backgroundWhiteColor.withOpacity(0.95),
            border: Border(
                bottom:
                    BorderSide(width: 0.5.w, color: const Color(0xffDADBE1)),
                top: BorderSide(width: 0.5.w, color: const Color(0xffDADBE1)))),
        child: ListView.separated(
          separatorBuilder: (context, index) => horizontalSpace(8),
          itemCount: itemList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoriesListViewItem(
              index: index,
              selectedIndex: selectedIndex,
              onTap: () => changeSelectedIndex(index),
            );
          },
        ));
  }
}
