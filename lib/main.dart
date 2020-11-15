import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import './pages/Login/login.dart';
import 'pages/ListView/listView.dart';
import 'pages/Test/test.dart';
import 'pages/TabBar/tabbar.dart';
import 'pages/Network/network.dart';
import 'pages/DataShare/dataShare.dart';
void main() {
  runApp(MyApp());
  if(Platform.isAndroid){
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.pink
    );
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DataShare()
    );
  }
}

