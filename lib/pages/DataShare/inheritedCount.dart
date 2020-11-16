import "package:flutter/material.dart";
import "./MyValueNotifier.dart";

class InheritedCount extends InheritedWidget{
  final MyNotifier<MyNotifier> count;

  InheritedCount(this.count,{Widget child}):super(child:child);

  static InheritedCount of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<InheritedCount>();
  }
  @override
  bool updateShouldNotify(InheritedCount oldWidget) {
    return count.value != oldWidget.count.value;
  }
}