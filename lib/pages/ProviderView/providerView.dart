import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../../providers/TestProvider.dart";
class ProviderView extends StatefulWidget {
  @override
  _ProviderViewState createState() => _ProviderViewState();
}

class _ProviderViewState extends State<ProviderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROVIDER VIEW'),
      ),
      // 页面局部provider
      body: ChangeNotifierProvider<TestData>(
        create: (ctx)=>TestData('wang'),
        child: Container(
            child:Center(
                child: Builder(
                  builder: (ctx){
                    TestData testData = Provider.of<TestData>(ctx);
                    return FlatButton(
                      child:Text(testData.name),
                      onPressed: (){
                        testData.changeName();
                      },
                    );
                  },
                )
            )
        ),
      )
    );
  }
}
