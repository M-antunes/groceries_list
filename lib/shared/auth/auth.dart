import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:groceries_list/shared/constants/firebase_routes.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  Future<void> signUp(String email, String password) async {
    final response = await http.post(
      Uri.parse(FirebaseRoutes.signUp),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }
}
