import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: 1,
          color: Colors.grey[600]),
    );
  }
}
