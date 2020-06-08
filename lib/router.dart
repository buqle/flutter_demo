import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_study/pages/home.dart';
import 'package:flutter_study/pages/login_page.dart';

class FluroRouter{
  static Router router=Router();

  static Handler _loginHandler=Handler(
    handlerFunc:(BuildContext context,Map<String,dynamic>params)=>LoginPage()
  );

  static Handler _homeHandler=Handler(
    handlerFunc:(BuildContext context,Map<String,dynamic>params)=>HomePage(userName: params['userName'][0]/* 路由传递参数*/)
  );

  static void setupRoter(){
    router.define(
      'login', handler: _loginHandler,
      );

    router.define(
      'home/:userName',//传参
       handler: _homeHandler
      );
  }


}