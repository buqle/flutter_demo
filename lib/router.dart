import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_study/pages/index_page.dart';
import 'package:flutter_study/pages/login_page.dart';
import 'package:flutter_study/pages/product_page.dart';
import 'package:flutter_study/pages/mine_page.dart';

class FluroRouter {
  static Router router = Router();

  //登录
  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage());

  //首页
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomePage());

  //商品详情
  static Handler _productHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProdcutPage());

  //我的
  static Handler _mineHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          MinePage());

  static void setupRoter() {
    router.define(
      'login',
      handler: _loginHandler,
    );

    router.define('home', //传参
        handler: _homeHandler);

    router.define('prodcut', handler: _productHandler);

    router.define('mine', handler: _mineHandler);
  }
}
