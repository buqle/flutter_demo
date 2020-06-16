import 'package:flutter/material.dart';
import 'package:flutter_study/router.dart';


void main(){
  //初始化路由
  FluroRouter.setupRoter();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'flutter study',
      //初始化页面为登陆页
      initialRoute: 'login',
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}