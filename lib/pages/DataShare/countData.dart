import "package:flutter/material.dart";
import "./inheritedCount.dart";
import "./MyValueNotifier.dart";
class CountData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyNotifier<MyNotifier> count = InheritedCount.of(context).count;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('-'),
            onPressed: (){
              count.value.age--;
            },
          ),
          Text('${count.value.age}'),
          FlatButton(
            child: Text('+'),
            onPressed: (){
              count.value.age++;
            },
          )
        ],
      ),
    );
  }
}
