// Gerenciamento da Autenticação.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class AuthController {
  var _isAuthenticated = false;
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  Future<void> saveUse(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUse(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    final json = instance.get("user") as String;
    setUser(context, UserModel.fromJson(json));
    return;
  }
}
