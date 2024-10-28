import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zayed_test/core/di/dependency_injection.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/widgets/custom_pull_to_refresh.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';
import 'package:zayed_test/features/menu/logic/cubit/menu_cubit.dart';
import 'package:zayed_test/features/menu/ui/widgets/products_list_view_item.dart';
import 'package:zayed_test/features/item_details/ui/item_details_screen.dart';

class ProductsListViewSection extends StatefulWidget {
  const ProductsListViewSection({super.key});

  @override
  State<ProductsListViewSection> createState() =>
      _ProductsListViewSectionState();
}

class _ProductsListViewSectionState extends State<ProductsListViewSection> {
  final _refreshController = RefreshController(
      initialRefresh: false, initialRefreshStatus: RefreshStatus.idle);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
      builder: (context, state) {
        return Expanded(
          child: CustomPullToRefresh(
            controller: _refreshController,
            onRefresh: () {
              getIt<MenuCubit>().refreshItems(_refreshController);
            },
            child: CustomScrollView(
              shrinkWrap: true,
              scrollBehavior: const ScrollBehavior(),
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Skeletonizer(
                    enabled: state is Menuloading,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                          thickness: 0.5.w, color: AppColors.dividerColor),
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ProductsListViewItem(
                          itemModel: itemsList[0],
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(context,
                                withNavBar: false,
                                screen: const ItemDetailsScreen());
                          },
                        );
                      },
                    ),
                  )
                ]))
              ],
            ),
          ),
        );
      },
    );
  }
}
