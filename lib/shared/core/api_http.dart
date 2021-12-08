import 'dart:convert';

import 'package:groceries_list/shared/constants/firebase_routes.dart';
import 'package:http/http.dart' as http;

class ApiHttp {
  Future<http.Response> post(String email, String password) async {
    return await http.post(
      Uri.parse(FirebaseRoutes.baseUrl),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }
}
