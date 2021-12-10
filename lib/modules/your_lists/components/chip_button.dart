import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  final String text;
  final String type;
  final double size;
  final double padding;
  final VoidCallback onTap;
  final Color? color;
  const ChipButton({
    Key? key,
    required this.text,
    required this.type,
    required this.size,
    required this.padding,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: color ?? Colors.grey[300],
        elevation: 3,
        label: InkWell(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: type,
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          onTap: onTap,
        ));
  }
}
