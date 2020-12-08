import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/BubblePage/bubblePage.dart';
import './pages/Login/login.dart';
import 'pages/ListView/listView.dart';
import 'pages/Test/test.dart';
import 'pages/TabBar/tabbar.dart';
import 'pages/Network/network.dart';
import 'pages/DataShare/dataShare.dart';
import 'pages/ProviderView/providerView.dart';
import 'pages/BubblePage/bubblePage.dart';
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context,Widget child){
          // child为MaterialApp;
          return child;
        },
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TestPage()
    );;
  }
}



