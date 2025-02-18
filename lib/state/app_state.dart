import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 3));

    _isLoading = false;
    notifyListeners();
  }
}
