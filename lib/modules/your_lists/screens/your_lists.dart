import 'package:flutter/material.dart';
import 'package:groceries_list/modules/your_lists/components/list_item.dart';
import 'package:groceries_list/shared/models/item.dart';

class YourLists extends StatefulWidget {
  const YourLists({
    Key? key,
  }) : super(key: key);

  @override
  State<YourLists> createState() => _YourListsState();
}

class _YourListsState extends State<YourLists> {
  List<Item> purchaseList = Item.generateList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Olá, ',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                TextSpan(
                    text: 'Usuário',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.teal)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Text('Nome da Lista', style: TextStyle(fontSize: 23)),
                    )),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.teal),
                  onPressed: () {},
                )
              ],
            ),
          ),
          ListItem(items: purchaseList),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
