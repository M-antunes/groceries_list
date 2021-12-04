import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final double buttonWidth;
  final String buttonName;
  const ThemeButton({
    Key? key,
    required this.buttonWidth,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * buttonWidth,
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Center(child: Text(buttonName)),
      ),
    );
  }
}
