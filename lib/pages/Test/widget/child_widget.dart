import "package:flutter/material.dart";
class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('child widget');
    return Container(
      child:Text('child widget')
    );
  }
}
