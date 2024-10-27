import 'package:flutter/material.dart';
import 'package:zayed_test/features/home/ui/widgets/carousel_section.dart';
import 'package:zayed_test/features/home/ui/widgets/categories_list_view.dart';
import 'package:zayed_test/features/home/ui/widgets/delevery_address_section.dart';
import 'package:zayed_test/features/home/ui/widgets/header_section.dart';
import 'package:zayed_test/features/home/ui/widgets/products_list_view_section.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                HeaderSection(),
                CarouselSection(),
                DeleveryAddressSection(),
                ProductsListViewSection(),
              ],
            ),
            CategoriesListView()
          ],
        ),
      ),
    );
  }
}


List<String> itemList = [
  'Ramadan deals',
  'Main dishes',
  'Side dishes',
  'For sharing'
];
