import 'package:flutter/material.dart';

class TestData with ChangeNotifier{
  String _name;
  TestData(this._name);
  get name=>_name;
  changeName(){
    _name = 'ming';
    notifyListeners();
  }
}