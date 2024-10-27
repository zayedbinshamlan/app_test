import 'package:flutter/material.dart';
import 'package:zayed_test/core/widgets/custom_radio_button_item.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';

class SizesListViewItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final Function()? onTap;
  const SizesListViewItem(
      {super.key,
      required this.index,
      required this.selectedIndex,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final item = itemsList[0].size[index];
    return CustomRadioButtonItem(
      title: item.title,
      price: item.price,
      onTap: onTap,
      index: index,
      selectedIndex: selectedIndex,
    );
  }
}
