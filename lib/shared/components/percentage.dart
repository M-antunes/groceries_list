import 'package:flutter/material.dart';
import 'package:groceries_list/shared/components/percentage_bar.dart';
import 'package:groceries_list/shared/models/item.dart';

class Percent extends StatelessWidget {
  final List<Item> countingForPercent;
  const Percent(this.countingForPercent, {Key? key}) : super(key: key);

  _percentCount() {
    double itemCount = 0;
    for (var i = 0; i < countingForPercent.length; i++) {
      if (countingForPercent[i].isSelected == true) {
        itemCount++;
      }
    }
    return countingForPercent.isEmpty
        ? 0
        : itemCount / countingForPercent.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sua lista está ',
            style: TextStyle(fontSize: 14),
          ),
          PercentageBar(percentage: _percentCount()),
          const Text(
            ' completa',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
