// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries_list/modules/home/screens/home.dart';
import 'package:groceries_list/modules/login/screens/optional_login.dart';
import 'package:groceries_list/shared/auth/auth.dart';
import 'package:provider/provider.dart';

class LoginOrHome extends StatelessWidget {
  const LoginOrHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return auth.isAuth ? HomePage() : OptionalLogin();
  }
}
