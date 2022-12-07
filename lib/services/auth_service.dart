import 'dart:convert';

import 'package:chat_app/global/globals.dart';
import 'package:chat_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService with ChangeNotifier {
  Usuario? usuario;
  Future login(String email, String password) async {
    final data = {'email': email, 'password': password};

    final uri = Uri.parse('${Environment.apiUrl}/login');
    final resp = await http.post(uri,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    print(resp.body);
    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      usuario = loginResponse.usuario;
    }
  }
}
