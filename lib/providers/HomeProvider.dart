

import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/music_data_entity.dart';

class HomeProvider with ChangeNotifier{


  List<MusicDataEntity> _items = List<MusicDataEntity>();

  // 封装数据，禁止外部去操作数据
  List<MusicDataEntity> get items => UnmodifiableListView(_items);

  Completer<bool> _isInit = Completer<bool>();

  // 数据是否加载完成
  Future<bool> get init => _isInit.future;

  HomeProvider(){
    _init();
  }

  /// 更新最新数据
  void update() async{
    await _load();
    debugPrint("已经是最新");
    notifyListeners();
  }

  /// 加载更多
  void next() async{
    await _load();
    debugPrint("已经加载了更多");
    notifyListeners();
  }

  void _init() async {
    await _load();
    // 数据加载完成
    _isInit.complete(true);
    notifyListeners();
  }

  /// 网络数据请求
  Future<void> _load()async{
    // 加载数据
    //StoreEntity stores =  await HomeDao.fetch();
    var result = List<MusicDataEntity>();
    // 列表中的头部
    // result.add(HeadMenuItem());
    // result.add(ScrollMenuItem());
    // result.add(GridMenuItem());
    // result.add(AdBarItem());
    // result.add(OfferItem());

    // if(stores != null) {
    //   result.addAll(stores.stores);
    // }
    _items = result;
  }
}