import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final double buttonWidth;
  final String buttonName;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;
  const ThemeButton({
    Key? key,
    required this.buttonWidth,
    required this.buttonName,
    this.onTap,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width * buttonWidth,
        decoration: BoxDecoration(
            color: color ?? Colors.teal,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          child: Center(
              child: Text(
            buttonName,
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: 15,
            ),
          )),
        ),
      ),
      onTap: onTap,
    );
  }
}
