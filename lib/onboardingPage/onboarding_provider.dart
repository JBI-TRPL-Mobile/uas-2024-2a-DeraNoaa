import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  String _message = "Selamat datang, Apakah sudah memiliki akun?";
  
  List<Map<String, dynamic>> _users = [];

  String get message => _message;
  List<Map<String, dynamic>> get users => _users;

  Future<void> loadData() async {
    final messageData = await rootBundle.loadString('data/datamessage.json');
    _message = json.decode(messageData)['message'];

    final userData = await rootBundle.loadString('data/datauser.json');
    _users = List<Map<String, dynamic>>.from(json.decode(userData)['users']);

    notifyListeners(); 
  }
}