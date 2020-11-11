import "package:flutter/material.dart";
import "../../models/post.dart";

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,

      appBar: AppBar(
        title: Text('LISTVIEW'),
        elevation:0
      ),
      body:Container(

          child:ListView.builder(itemCount:posts.length,itemBuilder: (BuildContext context,int index){
            return Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Image.network(posts[index].imageUrl),
                  SizedBox(height:10),
                  Text(posts[index].author,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ))
                ],
              ),
            );
          })
      )
    );
  }
}
