import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthState with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  AuthState() {
    _loadAuthState();
  }

  Future<void> login() async {
    _isAuthenticated = true;
    notifyListeners();
    _saveAuthState();
  }

  Future<void> logout() async {
    _isAuthenticated = false;
    notifyListeners();
    _saveAuthState();
  }

  Future<void> _saveAuthState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', _isAuthenticated);
  }

  Future<void> _loadAuthState() async {
    final prefs = await SharedPreferences.getInstance();
    _isAuthenticated = prefs.getBool('isAuthenticated') ?? false;
    notifyListeners();
  }
}
