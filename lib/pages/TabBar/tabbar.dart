import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TABBAR'),
            bottom: TabBar(
              tabs:[
                Tab(
                  icon: Icon(Icons.local_florist)
                ),
                Tab(
                    icon: Icon(Icons.change_history)
                ),
                Tab(
                    icon: Icon(Icons.directions_bike)
                )
              ]
            ),
          ),
          body:TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist,size: 100),
              Icon(Icons.change_history,size: 100),
              Icon(Icons.directions_bike,size: 100),
            ],
          ),
          drawer: Drawer(
            child: Container(
              child:ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=803840109,2256896947&fm=11&gp=0.jpg'),
                    ),
                    accountEmail: Text('3284304056@qq.com'),
                    accountName: Text('wangmingjie'),
                  ),
                  ListTile(
                    title: Text('FLUTTER',textDirection: TextDirection.rtl,),
                    trailing: Icon(Icons.message),
                  ),
                  ListTile(
                    title: Text('FLUTTER',textDirection: TextDirection.rtl,),
                    trailing: Icon(Icons.message),
                  )
                ],
              )
            ),
          )
        )
    );
  }
}
