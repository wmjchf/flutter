import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/Test/test.dart';
import '../pages/DataShare/dataShare.dart';

class Routes {
  static final FluroRouter router = new FluroRouter();
  static const root = '/';
  static const data_share = '/data_share';


  void _config() {
    router.define(
        root, handler: Handler(handlerFunc: (context, params) => TestPage()));

    router.define(
        data_share, handler: Handler(handlerFunc: (context, params) => DataShare()));
  }

  Future navigateTo(BuildContext context, String path,[String param='']){
    var p = param.isNotEmpty?'$path/$param':path;
    return router.navigateTo(context,p,transition: TransitionType.inFromRight);
  }

  Future navigateFromBottom(BuildContext context, String path,[String param='']){
    var p = param.isNotEmpty?'$path/$param':path;
    return router.navigateTo(context,p,transition: TransitionType.inFromBottom);
  }

  factory Routes() =>_getInstance();
  static Routes get instance => _getInstance();
  static Routes _instance;

  Routes._() {
    _config();
  }
  static Routes _getInstance() {
    if (_instance == null) {
      _instance = new Routes._();
    }
    return _instance;
  }
}