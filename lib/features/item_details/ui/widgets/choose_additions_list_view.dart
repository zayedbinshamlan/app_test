import 'package:flutter/material.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';
import 'package:zayed_test/features/item_details/ui/widgets/choose_additions_list_view_item.dart';

class ChooseAdditionsListView extends StatelessWidget {
  const ChooseAdditionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsList[0].additions.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ChooseAdditionsListViewItem(index: index);
      },
    );
  }
}
