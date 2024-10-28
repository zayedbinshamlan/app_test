import 'package:flutter/material.dart';
import 'package:zayed_test/features/menu/ui/widgets/carousel_section.dart';
import 'package:zayed_test/features/menu/ui/widgets/categories_list_view.dart';
import 'package:zayed_test/features/menu/ui/widgets/delevery_address_section.dart';
import 'package:zayed_test/features/menu/ui/widgets/menu_header_section.dart';
import 'package:zayed_test/features/menu/ui/widgets/products_list_view_section.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MenuHeaderSection(),
            CarouselSection(),
            DeleveryAddressSection(),
            ProductsListViewSection(),
            CategoriesListView()
          ],
        ),
      ),
    );
  }
}
