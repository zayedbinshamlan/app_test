import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/features/home/ui/widgets/products_list_view_item.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';
import 'package:zayed_test/features/item_details/ui/item_details_screen.dart';

class ProductsListViewSection extends StatelessWidget {
  const ProductsListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        shrinkWrap: true,
        scrollBehavior: const ScrollBehavior(),
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
                return ProductsListViewItem(
                  itemModel: itemsList[0],
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(context,
                        screen: const ItemDetailsScreen());
                  },
                );
              },
            )
          ]))
        ],
      ),
    );
  }
}
