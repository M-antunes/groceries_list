import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:groceries_list/shared/constants/firebase_routes.dart';
import 'package:groceries_list/shared/exceptions/auth_exceptions.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String? _token;
  String? _email;
  String? _uid;
  DateTime? _expireDate;

  bool get isAuth {
    final isValid = _expireDate?.isAfter(DateTime.now()) ?? false;
    return _token != null && isValid;
  }

  String? get token {
    return isAuth ? _token : null;
  }

  String? get email {
    return isAuth ? _email : null;
  }

  String? get uid {
    return isAuth ? _uid : null;
  }

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
    final body = jsonDecode(response.body);
    if (body['error'] != null) {
      throw AuthExceptions(body['error']['message']);
    } else {
      _token = body['idToken'];
      _email = body['email'];
      _uid = body['localId'];
      _expireDate = DateTime.now().add(
        Duration(
          seconds: int.parse(body['expiresIn']),
        ),
      );
      notifyListeners();
    }
  }

  Future<void> signUp(String email, String password) async {
    return _authenticate(email, password, FirebaseRoutes.signUp);
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, FirebaseRoutes.signIn);
  }
}
