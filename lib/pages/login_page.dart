import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('登录页')
      ),
      body: Center(
        child: Text('请登录后进行操作'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          var userName='BUQLE';
          Navigator.pushReplacementNamed(context, 'home/$userName');//路由跳转并传参

        },
        child: Icon(Icons.exit_to_app),
        ),
    );
  }
}