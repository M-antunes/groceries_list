import 'dart:math';

import 'item.dart';

class PurchaseList {
  String id;
  String name;
  List<Item> items;

  PurchaseList({
    required this.id,
    required this.name,
    required this.items,
  });

  static List<PurchaseList> generateList() {
    return [
      PurchaseList(
        id: Random().nextDouble().toString(),
        name: 'Lista pré pronta',
        items: Item.generateList(),
      ),
    ];
  }
}
