import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProdcutPage extends StatefulWidget {
  @override
  _ProdcutPageState createState() => _ProdcutPageState();
}

class _ProdcutPageState extends State<ProdcutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1624);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark, //改变状态栏字体颜色
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(30)),
                      //height: ScreenUtil().setHeight(88),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(IconData(0xe601, fontFamily: 'iconfont'),
                                color: Color.fromRGBO(61, 61, 62, 1),
                                size: ScreenUtil().setSp(56)),
                            Text('商品详情',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 39, 39, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(40),
                                )),
                            Icon(IconData(0xe625, fontFamily: 'iconfont'),
                                color: Color.fromRGBO(139, 139, 139, 1),
                                size: ScreenUtil().setSp(56)),
                          ]),
                    ),
                  ],
                )),
            Expanded(
                child: ListView(children: [
              Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/banner-pro.jpg',
                        //height:ScreenUtil().setHeight(575),
                        width: ScreenUtil().setWidth(750),
                        fit: BoxFit.cover,
                      )
                    ],
                  )),
              Container(
                  color: Colors.white,
                  //width: ScreenUtil().setWidth(750),
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(36),
                    bottom: ScreenUtil().setHeight(36),
                    left: ScreenUtil().setWidth(30),
                    right: ScreenUtil().setWidth(30),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '河南农家 新鲜土鸡蛋 自养柴鸡蛋 30枚一箱',
                        style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: ScreenUtil().setSp(34),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(24)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '券后价:￥19.9',
                              style: TextStyle(
                                  color: Color.fromRGBO(233, 68, 62, 1),
                                  fontSize: ScreenUtil().setSp(32),
                                  fontWeight: FontWeight.bold),
                            ),
                            Stack(
                                //fit: StackFit.loose,
                                children: [
                                  Image.asset(
                                    'images/icon_quan.png',
                                    width: ScreenUtil().setWidth(126),
                                    //height: ScreenUtil().setHeight(43),
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                      left: ScreenUtil().setWidth(16),
                                      top: ScreenUtil().setHeight(6),
                                      child: Text(
                                        '券￥6',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(235, 150, 33, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                        ),
                                      ))
                                ]),
                            Text(
                              '原价￥199.00',
                              style: TextStyle(
                                  color: Color.fromRGBO(153, 153, 153, 1),
                                  fontSize: ScreenUtil().setSp(22),
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              '已售3761件',
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: ScreenUtil().setSp(24),
                              ),
                            )
                          ]),
                      SizedBox(height: ScreenUtil().setHeight(26)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: ScreenUtil().setHeight(50),
                              //color: Colors.greenAccent,
                              child: Stack(
                                children: [
                                  Container(
                                    height: ScreenUtil().setHeight(8),
                                    margin: EdgeInsets.only(
                                        top: ScreenUtil().setHeight(22)),
                                    //color: Color.fromRGBO(235, 235, 235, 1),
                                    width: ScreenUtil().setHeight(690),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          ScreenUtil().setWidth(30)),
                                      color: Color.fromRGBO(235, 235, 235, 1),
                                    ),
                                  ),
                                  Positioned(
                                    top: ScreenUtil().setHeight(0),
                                    left: ScreenUtil().setWidth(46),
                                    child: Container(
                                      width: ScreenUtil().setWidth(248),
                                      height: ScreenUtil().setHeight(50),
                                      child: FlatButton(
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                        highlightColor: Colors.blue[700],
                                        //colorBrightness: Brightness.dark,
                                        splashColor: Colors.grey,
                                        child: Text(
                                          "分享可赚0.59元",
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(26),
                                              color: Colors.white),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/home'); //路由跳转并传参
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ])
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(22),
                  bottom: ScreenUtil().setHeight(8),
                ),
                color: Colors.white,
                padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('河南农家山上散养新鲜土鸡蛋自养草鸡月子笨鸡蛋柴鸡蛋30枚一箱',
                          style: TextStyle(
                              color: Color.fromRGBO(102, 102, 102, 1),
                              fontSize: ScreenUtil().setSp(28))),
                      SizedBox(
                        height: ScreenUtil().setHeight(24),
                      ),
                      Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'images/shop_logo.jpg',
                              width: ScreenUtil().setWidth(124),
                              height: ScreenUtil().setHeight(124),
                              
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(26),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '生态农场',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(34)),
                                  ),
                                  Row(children: [
                                    Text(
                                      '商品数量：6',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(101, 101, 101, 1),
                                          fontSize: ScreenUtil().setSp(24)),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(30),
                                    ),
                                    Text(
                                      '已拼：6991件',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(101, 101, 101, 1),
                                          fontSize: ScreenUtil().setSp(24)),
                                    ),
                                  ]),
                                ]),
                            SizedBox(
                              width: ScreenUtil().setWidth(72),
                            ),
                            Text(
                              '进店逛逛',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: ScreenUtil().setSp(26)),
                            ),
                            Icon(IconData(0xe61c, fontFamily: 'iconfont'),
                                color: Color.fromRGBO(51, 51, 51, 1),
                                size: ScreenUtil().setSp(40)),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(190),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '商品数量',
                                    style: TextStyle(
                                        color: Color.fromRGBO(153, 153, 153, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 11, 37, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Container(
                                      width: ScreenUtil().setWidth(30),
                                      height: ScreenUtil().setHeight(30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            ScreenUtil().setWidth(16)),
                                        color: Color.fromRGBO(255, 232, 234, 1),
                                      ),
                                      child: Text(
                                        '高',
                                        //textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 11, 37, 1),
                                            fontSize: ScreenUtil().setSp(20)),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: ScreenUtil().setWidth(190),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '商品数量',
                                    style: TextStyle(
                                        color: Color.fromRGBO(153, 153, 153, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 11, 37, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Container(
                                      width: ScreenUtil().setWidth(30),
                                      height: ScreenUtil().setHeight(30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            ScreenUtil().setWidth(16)),
                                        color: Color.fromRGBO(255, 232, 234, 1),
                                      ),
                                      child: Text(
                                        '高',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 11, 37, 1),
                                            fontSize: ScreenUtil().setSp(20)),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: ScreenUtil().setWidth(190),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '商品数量',
                                    style: TextStyle(
                                        color: Color.fromRGBO(153, 153, 153, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 11, 37, 1),
                                        fontSize: ScreenUtil().setSp(24)),
                                  ),
                                  Container(
                                      width: ScreenUtil().setWidth(30),
                                      height: ScreenUtil().setHeight(30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            ScreenUtil().setWidth(16)),
                                        color: Color.fromRGBO(255, 232, 234, 1),
                                      ),
                                      child: Text(
                                        '高',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 11, 37, 1),
                                            fontSize: ScreenUtil().setSp(20)),
                                      )),
                                ],
                              ),
                            ),
                          ])
                    ]),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            SizedBox(
                              width: ScreenUtil().setWidth(4),
                              height: ScreenUtil().setHeight(24),
                              child: Container(
                                color: Color.fromRGBO(233, 67, 61, 1),
                              ),
                            ),
                            SizedBox(width: ScreenUtil().setWidth(20)),
                            Text(
                              '商品评论',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: ScreenUtil().setSp(34)),
                            ),
                            SizedBox(width: ScreenUtil().setWidth(10)),
                            Text(
                              '(65)',
                              style: TextStyle(
                                  color: Color.fromRGBO(101, 101, 101, 1),
                                  fontSize: ScreenUtil().setSp(28)),
                            )
                          ]),
                          Row(children: [
                            Text(
                              '进店逛逛',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: ScreenUtil().setSp(26)),
                            ),
                            Icon(IconData(0xe61c, fontFamily: 'iconfont'),
                                color: Color.fromRGBO(51, 51, 51, 1),
                                size: ScreenUtil().setSp(40)),
                          ])
                        ],
                      ),
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true, //内容适配
                          physics: new NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(24)),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/avatar.jpg',
                                        width: ScreenUtil().setWidth(62),
                                        height: ScreenUtil().setHeight(62),
                                      ),
                                    ),
                                    Container(
                                      width: ScreenUtil().setWidth(505),
                                      margin: EdgeInsets.only(
                                        left: ScreenUtil().setWidth(18),
                                        top: ScreenUtil().setHeight(6),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '胖胖大熊仔',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(26)),
                                          ),
                                          Text(
                                            '2019-7-01',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    149, 149, 149, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(26)),
                                          ),
                                          Text(
                                            '包装很好，味道不错，下次还会光临!',
                                            style: TextStyle(
                                                height:
                                                    ScreenUtil().setHeight(3),
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontSize:
                                                    ScreenUtil().setSp(26)),
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'images/phy.jpg',
                                                  width: ScreenUtil()
                                                      .setWidth(150),
                                                  height: ScreenUtil()
                                                      .setHeight(150),
                                                      fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'images/phy.jpg',
                                                  width: ScreenUtil()
                                                      .setWidth(150),
                                                      fit: BoxFit.cover,
                                                  height: ScreenUtil()
                                                      .setHeight(150),
                                                ),
                                                Image.asset(
                                                  'images/phy.jpg',
                                                  width: ScreenUtil()
                                                      .setWidth(150),
                                                  height: ScreenUtil()
                                                      .setHeight(150),
                                                      fit: BoxFit.cover,
                                                ),
                                              ])
                                        ],
                                      ),
                                    )
                                  ]),
                            );
                          }),
                    ],
                  )),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        SizedBox(
                          width: ScreenUtil().setWidth(4),
                          height: ScreenUtil().setHeight(24),
                          child: Container(
                            color: Color.fromRGBO(233, 67, 61, 1),
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(20)),
                        Text(
                          '商品参数',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: ScreenUtil().setSp(34)),
                        ),
                      ]),
                      Container(
                        width: ScreenUtil().setWidth(600),
                        padding:
                            EdgeInsets.only(top: ScreenUtil().setHeight(26)),
                        child: Wrap(
                            runSpacing: ScreenUtil().setHeight(20),
                            children: [
                              Container(
                                width: ScreenUtil().setWidth(360),
                                child: Text(
                                  '品牌：阳澄湖',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                  ),
                                ),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(240),
                                child: Text(
                                  '品牌：阳澄湖',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                  ),
                                ),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(360),
                                child: Text(
                                  '包装方式：盒装',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                  ),
                                ),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(240),
                                child: Text(
                                  '包装方式：盒装',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: ScreenUtil().setSp(26),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  )),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(24)),
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: ScreenUtil().setWidth(30),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(4),
                          height: ScreenUtil().setHeight(24),
                          child: Container(
                            color: Color.fromRGBO(233, 67, 61, 1),
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(20)),
                        Text(
                          '商品详情',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: ScreenUtil().setSp(34)),
                        ),
                      ]),
                      SizedBox(
                        height: ScreenUtil().setHeight(30),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Image.asset(
                            'images/pro-pic.jpg',
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setHeight(1120),
                            fit: BoxFit.cover,
                          ),
                          Container(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            height: ScreenUtil().setHeight(100),
                          ),
                          Container(
                            //color: Color.fromRGBO(255, 255, 255, 1),
                            // width: ScreenUtil().setWidth(690),
                            margin: EdgeInsets.only(bottom:ScreenUtil().setHeight(12)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: ScreenUtil().setWidth(344),
                                    height: ScreenUtil().setHeight(74),
                                    child: FlatButton(
                                      color: Color.fromRGBO(255, 191, 70, 1),
                                      highlightColor: Colors.blue[700],
                                      colorBrightness: Brightness.dark,
                                      //splashColor: Colors.grey,
                                      child: Text(
                                        "自购赚￥0.59",
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(32)),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            ScreenUtil().setWidth(36)),
                                        bottomLeft: Radius.circular(
                                            ScreenUtil().setWidth(36)),
                                      )),
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, '/home'); //路由跳转并传参
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: ScreenUtil().setWidth(344),
                                    height: ScreenUtil().setHeight(74),
                                    child: FlatButton(
                                      color: Color.fromRGBO(81, 81, 81, 1),
                                      highlightColor: Colors.blue[700],
                                      colorBrightness: Brightness.dark,
                                      //splashColor: Colors.grey,
                                      child: Text(
                                        "分享赚￥0.59",
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(32)),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            ScreenUtil().setWidth(36)),
                                        bottomRight: Radius.circular(
                                            ScreenUtil().setWidth(36)),
                                      )),
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, '/home'); //路由跳转并传参
                                      },
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      )
                    ],
                  ))
            ]))
          ],
        )),
      ),
    );
  }
}
