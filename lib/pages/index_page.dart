import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//stful
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1624);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(36)),
                width: ScreenUtil().setWidth(690),
                height: ScreenUtil().setHeight(68),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/icon_search.png',
                      width: ScreenUtil().setWidth(26),
                      height: ScreenUtil().setHeight(26),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                        width: ScreenUtil().setWidth(270),
                        child: Text('复制搜索拼多多优惠券',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(26),
                              color: Color.fromRGBO(186, 186, 186, 1),
                              //height: ScreenUtil().setHeight(68),
                            )))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(18),
            ),
            Expanded(
              //height: 550,
              child:ListView(children: [
              Stack(children: [
              Container(
                //margin: EdgeInsets.only(top:ScreenUtil().setHeight(18)),
                child: Column(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(70),
                      color: Colors.white,
                    ),
                    Container(
                      height: ScreenUtil().setHeight(255),
                      color: Color.fromRGBO(239, 239, 244, 1),
                    ),
                  ],
                ),
              ),
              Positioned(
                 top: 0,
                left: ScreenUtil().setWidth(30),
                child: Container(
                  child: Image.asset(
                    'images/banner.jpg',
                    width: ScreenUtil().setWidth(686),
                    height: ScreenUtil().setHeight(300),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
            Container(
              padding:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(23)),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Image.asset(
                    'images/icon_ad.png',
                    width: ScreenUtil().setWidth(130),
                    height: ScreenUtil().setHeight(37),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Text('热烈庆祝人人购商城上线！',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(26),
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ))
                ],
              ),
            ),
            Container(
              color: Color.fromRGBO(239, 239, 244, 1),
              height: ScreenUtil().setHeight(215),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemIndexType('images/icon_qingcang.png' ,'品牌清仓'),
                  itemIndexType('images/icon_tuijian.png' ,'店铺推荐'),
                  itemIndexType('images/icon_baoyou.png' ,'1.9包邮'),
                  itemIndexType('images/icon_jifen.png' ,'积分专区')

                ],
              ),
            ),
            Container(
              //height:ScreenUtil().setHeight(88),
              padding: EdgeInsets.symmetric(vertical:16),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(170),
                    child: Column(
                      children:[
                        Text(
                          '综合',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(68, 68, 68, 1),
                            fontSize: ScreenUtil().setSp(30)
                            ),
                        ),
                        Text(
                          '热门推荐',
                          style: TextStyle(
                            color: Color.fromRGBO(91, 91, 91, 1),
                            fontSize: ScreenUtil().setSp(22)
                            ),
                        )
                      ]
                    ),
                    
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(1),
                    height: ScreenUtil().setHeight(36),
                    child: Container(
                       color:Color.fromRGBO(230, 230, 230, 1), 
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(170),
                    child: Column(
                      children:[
                        Text(
                          '佣金',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(68, 68, 68, 1),
                            fontSize: ScreenUtil().setSp(30)
                            ),
                        )
                      ]
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(1),
                    height: ScreenUtil().setHeight(36),
                    child: Container(
                       color:Color.fromRGBO(230, 230, 230, 1), 
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(170),
                    //height: ScreenUtil().setHeight(37),
                    
                    child: Column(
                      children:[
                        Text(
                          '价格',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(68, 68, 68, 1),
                            fontSize: ScreenUtil().setSp(30)
                            ),
                        )
                      ]
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(1),
                    height: ScreenUtil().setHeight(36),
                    child: Container(
                        color:Color.fromRGBO(230, 230, 230, 1), 
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(170),
                    child: Column(
                      children:[
                        Text('销量',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(68, 68, 68, 1),
                            fontSize: ScreenUtil().setSp(30)
                            ),
                        )
                      ]
                    ),
                  )
                ],
                )
            ),
           ListView.builder(
             //itemBuilder: ,
             itemCount: 4,
            shrinkWrap: true, //内容适配
            physics: new NeverScrollableScrollPhysics(),//如果最外层已经存在ListView需要添加此属性解决冲突
            itemBuilder: (context,index){
              return Container(
                 color: Color.fromRGBO(239, 239, 244, 1),
                 padding: EdgeInsets.only(top:ScreenUtil().setHeight(22)),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                     Column(
                       children: [
                         Stack(children: [
                           GestureDetector(
                             onTap:(){
                                Navigator.pushReplacementNamed(context, '/prodcut');//路由跳转并传参
                             } ,
                             child: Image.asset(
                                  'images/banner.jpg',
                                  width: ScreenUtil().setWidth(686),
                                  //height: ScreenUtil().setHeight(300),
                                  fit: BoxFit.cover,
                                ),
                           ),
                              Positioned(
                                bottom: 0,
                                width:ScreenUtil().setWidth(686) ,
                              
                                child:Container(
                                  padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                  child:Text(
                                    '河南农家山上散养新鲜土鸡蛋自养 新鲜',
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: ScreenUtil().setSp(26)
                                    ),
                                  )
                                )
                                )
                          ],
                          ),
                          Container(
                            
                            width:ScreenUtil().setWidth(686) ,
                            padding: EdgeInsets.only(
                              left:ScreenUtil().setWidth(20),
                              top: ScreenUtil().setHeight(30),
                              bottom: ScreenUtil().setHeight(20),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:BorderRadius.only(
                                  bottomLeft:Radius.circular(ScreenUtil().setWidth(12)),
                                  bottomRight:Radius.circular(ScreenUtil().setWidth(12)),
                                  
                                )
                              ),
                            child:Column(
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      //width:ScreenUtil().setWidth(524) ,
                                      child: Row(
                                        children:[
                                          Text(
                                            '券后价',
                                            style: TextStyle(
                                              color:Color.fromRGBO(167, 167, 167, 1),
                                              fontSize: ScreenUtil().setSp(24)
                                            ),
                                          ),
                                          Text(
                                            '￥',
                                            style: TextStyle(
                                              color:Color.fromRGBO(255, 18, 18, 1),
                                              fontSize: ScreenUtil().setSp(22)
                                            ),
                                            ),
                                          Text(
                                            '5.90',
                                            style: TextStyle(
                                              color:Color.fromRGBO(255, 18, 18, 1),
                                              fontSize: ScreenUtil().setSp(42)
                                            ),
                                          ),
                                          SizedBox(
                                            width:ScreenUtil().setWidth(20)
                                          ),
                                          Text(
                                            '原价￥12.85',
                                            style: TextStyle(
                                              color:Color.fromRGBO(127, 127, 127, 1),
                                              fontSize: ScreenUtil().setSp(22),
                                              decoration: TextDecoration.lineThrough
                                            ),
                                          )
                                        ]
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left:ScreenUtil().setWidth(176)),
                                      child: Row(
                                        children:[
                                          Text(
                                            '已售3761件',
                                            style: TextStyle(
                                              color:Color.fromRGBO(127, 127, 127, 1),
                                              fontSize: ScreenUtil().setSp(22),
                                             
                                            ),
                                          )
                                        ]
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                  Stack(children:[
                                    Image.asset(
                                    'images/icon_quan.png',
                                    width: ScreenUtil().setWidth(126),
                                    //height: ScreenUtil().setHeight(43),
                                    fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      left: ScreenUtil().setWidth(20),
                                      top: ScreenUtil().setHeight(6),
                                      child: Text(
                                         '券￥6',
                                            style: TextStyle(
                                              color:Color.fromRGBO(235, 150, 33, 1),
                                              fontSize: ScreenUtil().setSp(24),
                                             
                                            ),
                                      )
                                      )
                                  ]),
                                 Container(
                                   width:ScreenUtil().setWidth(202),
                                  height:ScreenUtil().setHeight(60),
                                  margin: EdgeInsets.only(right:ScreenUtil().setWidth(8),),
                                   child: FlatButton(
                                    color: Color.fromRGBO(62, 62, 62, 1),
                                    highlightColor: Colors.blue[700],
                                    colorBrightness: Brightness.dark,
                                    splashColor: Colors.grey,
                                    child: Text("分享赚",
                                    style: TextStyle(
                                      fontSize:ScreenUtil().setSp(24)
                                    ),
                                    ),
                                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      
                                       // Navigator.pushReplacementNamed(context, '/home');//路由跳转并传参

                                    },
                                  
                                  )
                                 )
                                ])
                              ],
                            ),
                          )
                       ],
                     )
                 ],
               ),);
            },
           )
            ],)),
           
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          
          items: [
             BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('会员'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('我的'),
          
        ),
        ],
        onTap: (int index) {
         Navigator.pushReplacementNamed(context, '/mine');
        },
        ),
      ),
    );
  }

  Widget itemIndexType(String imgUrl, String title) {
    return Container(
      width: ScreenUtil().setWidth(156),
      height: ScreenUtil().setHeight(156),
      padding: EdgeInsets.only(
          top: ScreenUtil().setWidth(30),
          right: ScreenUtil().setWidth(30),
          left: ScreenUtil().setWidth(30)),
      //color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16)),
          color: Colors.white,
     ),          
      child: Column(
        children: [
          Image.asset(
            imgUrl,
            width: ScreenUtil().setWidth(58),
            height: ScreenUtil().setHeight(58),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(17),
          ),
          Text(title,
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: ScreenUtil().setSp(23),
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
