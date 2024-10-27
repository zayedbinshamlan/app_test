import 'package:flutter/material.dart';
import 'package:zayed_test/core/widgets/custom_check_box_item.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';

class ChooseAdditionsListViewItem extends StatefulWidget {
  final int index;
  const ChooseAdditionsListViewItem({super.key, required this.index});

  @override
  State<ChooseAdditionsListViewItem> createState() =>
      _ChooseAdditionsListViewItemState();
}

class _ChooseAdditionsListViewItemState
    extends State<ChooseAdditionsListViewItem> {
  @override
  Widget build(BuildContext context) {
    final item = itemsList[0].additions[widget.index];
    return CustomCheckBoxItem(
      title: item.title,
      price: item.price,
      value: item.isChecked,
      onChanged: (value) {
        setState(() {
          item.isChecked = !item.isChecked;
        });
      },
    );
  }
}
