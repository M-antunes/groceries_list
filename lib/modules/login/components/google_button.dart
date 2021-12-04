import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Card(
        elevation: 4,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Image.asset('assets/images/google-logo.jpg', height: 30),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
