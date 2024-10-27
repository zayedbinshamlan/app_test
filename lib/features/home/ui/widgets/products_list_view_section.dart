
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/features/home/ui/widgets/products_list_view_item.dart';

class ProductsListViewSection extends StatelessWidget {
  const ProductsListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(thickness: 0.5.w, color: AppColors.dividerColor),
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const ProductsListViewItem();
              },
            )
          ]))
        ],
      ),
    );
  }
}
