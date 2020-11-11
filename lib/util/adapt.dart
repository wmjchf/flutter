/*
* Created by 汪明洁 on 2020/11/03.
* email: zhuoyuan93@gmail.com
* */

import 'package:flutter/material.dart';

class AdaptUtil{
  static AdaptUtil _instance;
  // 设备独立像素
  static double _pixelRatio;
  // 逻辑像素宽
  static double _screenWidth;
  // 逻辑像素高
  static double _screenHeight;
  // 状态栏高度
  static double _statusBarHeight;
  // 设备独立像素
  static double _bottomBarHeight;
  // 设备独立像素
  static double _textScaleFactor;
  // 默认ui设计稿尺寸
  static const Size defaultUiSize = Size(1080,1920);
  // ui设计稿尺寸
  Size uiSize = defaultUiSize;
  //命名构造函数
  AdaptUtil._();

  factory AdaptUtil(){
    return _instance;
  }

  static void init(BuildContext context,{Size uiSize = defaultUiSize}){
    _instance??=AdaptUtil._();
    _instance.uiSize = uiSize;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    _pixelRatio = mediaQueryData.devicePixelRatio;
    _screenWidth = mediaQueryData.size.width;
    _screenHeight = mediaQueryData.size.height;
    _statusBarHeight = mediaQueryData.padding.top;
    _bottomBarHeight = mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQueryData.textScaleFactor;
  }

  num get scaleWidth => _screenWidth/uiSize.width;
  num get scaleHeight => _screenHeight/uiSize.height;
  num get scaleText => scaleWidth;

  num setWidth(num width)=>width*scaleWidth;

  num setHeight(num height)=>height*scaleHeight;

  num setFontSize(num fontSize)=> fontSize*scaleText;
}