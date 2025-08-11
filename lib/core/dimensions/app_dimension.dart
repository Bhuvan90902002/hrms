import 'package:flutter/material.dart';

class AppDimension {
  static final AppDimension _instance = AppDimension._internal();
  factory AppDimension() => _instance;

  static late Size _screenSize;

  AppDimension._internal();

  Size get screenSize => _screenSize;

  void init(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
  }
}
