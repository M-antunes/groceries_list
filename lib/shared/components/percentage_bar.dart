import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  final double percentage;

  const PercentageBar({
    Key? key,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          FractionallySizedBox(
            widthFactor: percentage,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Center(
            child: Text('${(percentage * 100).toStringAsFixed(0)}%',
                style: const TextStyle(fontSize: 14)),
          )
        ],
      ),
    );
  }
}
