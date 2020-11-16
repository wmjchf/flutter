import "package:flutter/material.dart";
import '../../models/music_data_entity.dart';
import '../../models/comment_data_entity.dart';
import "../../generated/json/base/json_convert_content.dart";

import "../../net/httpManager.dart";
import "../../net/resultData.dart";
HttpManager http = HttpManager.getInstance();
class NetworkPage extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<NetworkPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_load();
  }
  Future<dynamic> _load() async{
    //var res = await http.get('/search',params: {'keywords':'海阔天空'});
    //MusicDataEntity musicDataEntity = JsonConvert.fromJsonAsT<MusicDataEntity>(res);
    //print(musicDataEntity);
    //ResponseDataEntity reponse = JsonConvert.fromJsonAsT(json)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('NETWORK'),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: () async{
          var res = await http.postFormData('/comment/music',params: {'id':'186016','limit':1});
          if(!(res is ResultData)){
            CommentDataEntity commentDataEntity = JsonConvert.fromJsonAsT<CommentDataEntity>(res);
            print(commentDataEntity.total);
          }
        }),
      ),
      body: Container(
        color:Colors.grey
      ),
    );
  }
}
