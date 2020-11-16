import 'package:flutter/material.dart';
import './pages/Login/login.dart';
import 'pages/ListView/listView.dart';
import 'pages/Test/test.dart';
import './routes/routes.dart';
import 'pages/TabBar/tabbar.dart';
import 'pages/Network/network.dart';
import 'pages/DataShare/dataShare.dart';
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        builder: (BuildContext context,Widget child){
          // child为MaterialApp;
          return child;
        },
        //onGenerateRoute: Routes.router.generator,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TestPage()
    );;
  }
}



