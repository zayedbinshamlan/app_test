import 'package:zayed_test/features/item_details/data/models/additions_model.dart';
import 'package:zayed_test/features/item_details/data/models/size_model.dart';

class ItemModel {
  final String name;
  final String description;
  final double price;
  final List<SizeModel> size;
  final List<AdditionsModel> additions;

  ItemModel(
      {required this.name,
      required this.description,
      required this.price,
      required this.size,
      required this.additions});
}
