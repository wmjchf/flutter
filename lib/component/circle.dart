import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget{
  Circle();
  Widget build(BuildContext context){
    return Container(
      height: 70,
      child:Stack(
        overflow:Overflow.visible,
        children: <Widget>[
          Positioned(
            width: 120,
            height: 105,
            top:-35,
            left:125,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  width: 50,
                  height:50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}