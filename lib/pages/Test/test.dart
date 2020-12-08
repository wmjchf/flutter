import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import './widget/child_widget.dart';
import '../../routes/routes.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String name;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.name='wang';
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
              setState((){
                name="jie";
              });
            },
          )
        ],
      ),
      body:Container(
        color:Colors.red,
        child:Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606465184952&di=e0bffc739cd10ab84c516e0f8d71e460&imgtype=0&src=http%3A%2F%2Fi1.sinaimg.cn%2FIT%2F2010%2F0419%2F201041993511.jpg',
          width:300,
          height:200,
          fit: BoxFit.cover,
        )
      )
    );
  }
}
