import 'package:flutter/material.dart';
import 'package:groceries_list/shared/models/item.dart';

import 'chip_button.dart';

class ListItem extends StatefulWidget {
  final List<Item> items;
  const ListItem({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return Padding(
            padding: widget.items.length == index + 1
                ? const EdgeInsets.only(left: 10, right: 10, bottom: 60)
                : const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              color: item.isSelected ? Colors.teal : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(5),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ChipButton(
                      text: '1',
                      type: 'kg',
                      padding: 5,
                      size: 18,
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 2,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: item.isSelected ? Colors.white : Colors.teal,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 16,
                          color: item.isSelected ? Colors.white : Colors.teal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(
                          item.isSelected
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank_rounded,
                          size: 30,
                          color: item.isSelected ? Colors.white : Colors.teal,
                        ),
                        onTap: () {
                          setState(() {
                            item.isSelected = !item.isSelected;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: widget.items.length,
      ),
    );
  }
}
