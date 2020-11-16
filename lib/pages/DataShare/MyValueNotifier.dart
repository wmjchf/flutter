import 'package:flutter/foundation.dart';
class MyNotifier<T> extends ChangeNotifier implements ValueListenable<T> {
  /// Creates a [ChangeNotifier] that wraps this value.
  T _value;
  String _name;
  int _age;
  String _sex;
  MyNotifier(this._name,this._age,this._sex);
  get name=>this._name;
  get age=>this._age;
  get sex=>this._sex;
  set name(String newValue){
    if(_name == newValue) return;
    this._name = newValue;
    notifyListeners();
  }
  set age(int newValue){
    if(_age == newValue) return;
    this._age = newValue;
    notifyListeners();
  }
  set sex(String newValue){
    if(_sex == newValue) return;
    this._sex = newValue;
    notifyListeners();
  }
  /// The current value stored in this notifier.
  ///
  /// When the value is replaced with something that is not equal to the old
  /// value as evaluated by the equality operator ==, this class notifies its
  /// listeners.
  @override
  T get value => _value;
  set value(T newValue) {
    this._value = newValue;
  }
}