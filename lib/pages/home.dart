import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final String userName;
  HomePage({this.userName}) ;

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('首页')
      ),
      body: Center(
        child:Text('欢迎你,$userName!')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, 'login');
        },
        child: Icon(Icons.settings_backup_restore),
      ),
    );
  } 

}