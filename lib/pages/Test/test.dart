import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import '../../routes/routes.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER'),
        leading: IconButton(
          icon:Icon(Icons.menu),
          onPressed: (){
            showToast(
                "content",
              position: ToastPosition.bottom
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
              Routes().navigateTo(context, '/data_share');
            },
          ),
          IconButton(
            icon:Icon(Icons.battery_std),
            onPressed: (){
              print('search');
            },
          )
        ],
      ),
      body:Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[

          ],
        ),
      )
    );
  }
}
