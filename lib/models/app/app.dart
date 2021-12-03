import 'package:flutter/material.dart';
import 'package:groceries_list/models/login/screens/google_login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoogleLoginPage(),
    );
  }
}
