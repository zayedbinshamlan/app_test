import 'package:flutter/material.dart';
import 'package:zayed_test/core/helpers/spacing.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';
import 'package:zayed_test/features/item_details/ui/widgets/sizes_list_view_item.dart';

class SizesListView extends StatefulWidget {
  const SizesListView({super.key});

  @override
  State<SizesListView> createState() => _SizesListViewState();
}

class _SizesListViewState extends State<SizesListView> {
  int selectedIndex = -1;

  void changeSelectedIndex(int newValue) {
    setState(() {
      selectedIndex = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => verticalSpace(6),
      itemCount: itemsList[0].size.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SizesListViewItem(
          index: index,
          selectedIndex: selectedIndex,
          onTap: () => changeSelectedIndex(index),
        );
      },
    );
  }
}
