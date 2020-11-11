import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../component/circle.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('登录'),
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height:150,
                      decoration: BoxDecoration(
                          color:Colors.pink,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                      ),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top:50),
                      child:Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height:500,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color:Color.fromARGB(10, 0, 0, 0),
                                    offset: Offset(5.0,5.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.0
                                )
                              ]
                          ),
                          child:Column(
                            children: <Widget>[
                              Circle(),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text('登录',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Container(
                                  height:60,
                                  margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:Colors.black
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration.collapsed(hintText: '输入不方号'),
                                        ),
                                      )
                                  )
                              ),
                              Container(
                                  height:60,
                                  margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:Colors.black
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration.collapsed(hintText: '输入密码'),
                                        ),
                                      )
                                  )
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                                  alignment: Alignment.bottomRight,
                                  child: Text('忘记密码?')
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.all(Radius.circular(25))
                                ),
                                child: Center(
                                  child: Text('登录',
                                    style: TextStyle(
                                        color:Colors.white,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin:EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text('验证码登录'),
                                    ),
                                    Text('|'),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text('新用户注册',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 35, 179, 255)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Checkbox(
                                      value: true,
                                    ),
                                    Text('我已阅读并同意遵守'),
                                    Text('《服务许可协议》',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                    )
                )
              ],
            )
        ),
      )
    );
  }
}

