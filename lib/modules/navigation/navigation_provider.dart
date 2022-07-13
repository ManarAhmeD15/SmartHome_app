import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {



  bool _isCollapsed = true;

  bool get isCollapsed => _isCollapsed;

  void toggleIsCollapsed() {
    _isCollapsed = !isCollapsed;

    notifyListeners();
  }
}
