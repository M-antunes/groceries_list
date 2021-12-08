import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:groceries_list/shared/constants/firebase_routes.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  Future<void> _authenticate(
      String email, String password, String routeUrl) async {
    final response = await http.post(
      Uri.parse(routeUrl),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }

  Future<void> signUp(String email, String password) async {
    _authenticate(email, password, FirebaseRoutes.signUp);
  }

  Future<void> login(String email, String password) async {
    _authenticate(email, password, FirebaseRoutes.signIn);
  }
}
