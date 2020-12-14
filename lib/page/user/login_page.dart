import 'package:flutter/material.dart';
import 'package:flutter_shop/call/call.dart';
import 'package:flutter_shop/call/notify.dart';

class LoginPage extends StatelessWidget {
  String username;
  LoginPage({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登入頁面')),
      body: Center(
        child:RaisedButton(
          onPressed: (){
            Call.dispatch('Test',data:{
              'name':'Jeff',
              'islogin':true
            });
          }
        ),
      ),
    );
  }
}
