import 'dart:math';

class Item {
  final String? id;
  final String name;
  int quantity;
  final double? price;
  final String type;
  final String section;
  bool isSelected;

  Item({
    this.id,
    required this.name,
    required this.quantity,
    this.price,
    required this.type,
    required this.section,
    this.isSelected = false,
  });

  void toggleSelection() {
    isSelected = !isSelected;
  }

  static List<Item> generateList() {
    return [
      Item(
        id: Random().nextDouble().toString(),
        name: 'Arroz',
        quantity: 1,
        section: 'grãos',
        type: 'kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Açúcar',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Feijão',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Farinha',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Sal',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Macarrão',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Creme de Leite',
        quantity: 3,
        section: 'grãos',
        type: 'Pct',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Milho de Pipoca',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Batata',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Cebola',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Tomate',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Alho',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Arroz',
        quantity: 1,
        section: 'grãos',
        type: 'kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Açúcar',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Feijão',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Farinha',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Sal',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Macarrão',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Creme de Leite',
        quantity: 3,
        section: 'grãos',
        type: 'Pct',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Milho de Pipoca',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Batata',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Cebola',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Tomate',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
      Item(
        id: Random().nextDouble().toString(),
        name: 'Alho',
        quantity: 1,
        section: 'grãos',
        type: 'Kg',
      ),
    ];
  }
}
