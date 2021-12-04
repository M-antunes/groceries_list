import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_list/Modules/login/screens/google_login.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const GoogleLoginPage()));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                'assets/images/grocery.png',
              ),
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Groceries ',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 45,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: 'List',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 50,
                      fontWeight: FontWeight.w300),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
