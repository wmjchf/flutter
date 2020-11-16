import "package:flutter/material.dart";
import 'package:flustars/flustars.dart';
import "./countData.dart";
import "./inheritedCount.dart";
import "./MyValueNotifier.dart";
class DataShare extends StatefulWidget {
  @override
  _DataShareState createState() => _DataShareState();
}

class _DataShareState extends State<DataShare> {
  MyNotifier<MyNotifier> count = MyNotifier<MyNotifier>('wang',12,'man');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    count.value = count;
    return Scaffold(
      appBar: AppBar(
        title:Text('DataShare')
      ),
      body:InheritedCount(
        count,
        child:Container(
            color:Colors.green,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ValueListenableBuilder(
                  builder: (context,value,child){
                    print("123");
                    return Text('${count.value.name}');
                  },
                  valueListenable: count,
                ),
                //Text('${this.count.value}'),
                ValueListenableBuilder(
                  builder: (context,value,child){
                    return Text('${count.value.age}');
                  },
                  valueListenable: count,
                ),
                ValueListenableBuilder(
                  builder: (context,value,child){
                    return CountData();
                  },
                  valueListenable: count,
                ),
              ],
            )
        )
      )
    );
  }
}
