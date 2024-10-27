import 'package:zayed_test/features/item_details/data/models/additions_model.dart';
import 'package:zayed_test/features/item_details/data/models/item_model.dart';
import 'package:zayed_test/features/item_details/data/models/size_model.dart';

List<ItemModel> itemsList = [
  ItemModel(
      name: 'Summer Sushi Platter',
      description:
          'Fresh and colorful, expertly made with the\nfreshest succulent shrimp, creamy avocado, and tangy pickled ginger. A drizzle of our signature sauce adds the perfect finishing touch to this refreshing and satisfying meal.',
      price: 41.00,
      size: [
        SizeModel(title: 'Small', price: '- SAR 10.00'),
        SizeModel(title: 'Medium', price: ''),
        SizeModel(title: 'Large', price: '+ SAR 15.00'),
      ],
      additions: [
        AdditionsModel(title: 'Herbs', price: '+ SAR 1.00'),
        AdditionsModel(title: 'Chicken', price: '+ SAR 5.00'),
        AdditionsModel(title: 'Egg', price: '+ SAR 5.00'),
      ])
];
