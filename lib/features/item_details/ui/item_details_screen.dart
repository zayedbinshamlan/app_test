import 'package:flutter/material.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/features/item_details/ui/widgets/add_to_bag_section.dart';
import 'package:zayed_test/features/item_details/ui/widgets/choose_additions_section.dart';
import 'package:zayed_test/features/item_details/ui/widgets/choose_size_section.dart';
import 'package:zayed_test/features/item_details/ui/widgets/item_details_header_section.dart';
import 'package:zayed_test/features/item_details/ui/widgets/item_details_section.dart';
import 'package:zayed_test/features/item_details/ui/widgets/notes_section.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AddToBagSection(),
      body: SafeArea(
        child: Column(
          children: [
            const ItemDetailsHeaderSection(),
            Expanded(
              child: CustomScrollView(
                scrollBehavior: const ScrollBehavior(),
                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Image.asset(AppImages.itemDetailsImg),
                    const ItemDetailsSection(),
                    const ChooseSizeSection(),
                    const ChooseAdditionsSection(),
                    const NotesSection()
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



