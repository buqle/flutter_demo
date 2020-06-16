import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

@override
  void initState() {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334) 
    ScreenUtil.init(context, width: 750, height: 1624);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
          child: Scaffold(
         //appBar: AppBar(),
         body:SafeArea(
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top:ScreenUtil().setHeight(77)),
                 height:ScreenUtil().setHeight(350),
                 width:ScreenUtil.screenWidth,
                // color:Colors.amber,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     Image.asset('images/logo.png',
                        width:ScreenUtil().setWidth(241),
                        height: ScreenUtil().setHeight(241),
                        fit: BoxFit.cover,
                       )
                   ]
                 ),
               ),
              
              
              Container(
                child:Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(82)),
                    //padding: EdgeInsets.only(bottom:ScreenUtil().setHeight(4)),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:Color.fromRGBO(230, 230, 230, 1),
                          width: 1
                        ),                      
                      )
                    ),
                    child: Row(
                      children:[
                        Image.asset(
                          'images/icon_phone.png',
                          width:ScreenUtil().setWidth(36),
                          height: ScreenUtil().setHeight(36),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          //margin: EdgeInsets.only(top:ScreenUtil().setHeight(10)),
                          width:ScreenUtil().setWidth(503),
                          child:TextField(
                          style: TextStyle(
                            color:Color.fromRGBO(200, 200, 200, 1),
                            fontSize:ScreenUtil().setSp(30)
                          ),
                          cursorColor: Color.fromRGBO(200, 200, 200, 1),
                          decoration: InputDecoration(
                               hoverColor: Colors.black,
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(200, 200, 200, 1),
                                    ),
                                    hintText: "请输入手机号",
                                    border: InputBorder.none
                          ),
                        )
                        )
                      ]
                    ),
                  )

                ],)
              ),


            SizedBox(
                          height:ScreenUtil().setHeight(40),
                        ),
            Container(
                child:Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(82)),
                    //padding: EdgeInsets.only(bottom:ScreenUtil().setHeight(4)),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:Color.fromRGBO(230, 230, 230, 1),
                          width: 1
                        ),                      
                      )
                    ),
                    child: Row(
                      children:[
                        Image.asset(
                          'images/icon_verification.png',
                          width:ScreenUtil().setWidth(36),
                          height: ScreenUtil().setHeight(36),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          //margin: EdgeInsets.only(top:ScreenUtil().setHeight(10)),
                          width:ScreenUtil().setWidth(386),
                          child:TextField(
                          style: TextStyle(
                            color:Color.fromRGBO(200, 200, 200, 1),
                            fontSize:ScreenUtil().setSp(30)
                          ),
                          cursorColor: Color.fromRGBO(200, 200, 200, 1),
                          decoration: InputDecoration(
                               hoverColor: Colors.black,
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(200, 200, 200, 1),
                                    ),
                                    hintText: "请输入图形验证码",
                                    border: InputBorder.none
                          ),
                        )
                        ),
                        Image.asset(
                          'images/yzm.jpg',
                          width:ScreenUtil().setWidth(116),
                          height: ScreenUtil().setHeight(57),
                          fit: BoxFit.fill,
                        )
                      ]
                    ),
                  )

                ],)
              ),

             SizedBox(
                          height:ScreenUtil().setHeight(40),
                        ),
               Container(
                child:Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(82)),
                    //padding: EdgeInsets.only(bottom:ScreenUtil().setHeight(4)),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:Color.fromRGBO(230, 230, 230, 1),
                          width: 1
                        ),                      
                      )
                    ),
                    child: Row(
                      children:[
                        Image.asset(
                          'images/icon_password.png',
                          width:ScreenUtil().setWidth(36),
                          height: ScreenUtil().setHeight(36),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          //margin: EdgeInsets.only(top:ScreenUtil().setHeight(10)),
                          width:ScreenUtil().setWidth(356),
                          child:TextField(
                          style: TextStyle(
                            color:Color.fromRGBO(200, 200, 200, 1),
                            fontSize:ScreenUtil().setSp(30)
                          ),
                          cursorColor: Color.fromRGBO(200, 200, 200, 1),
                          decoration: InputDecoration(
                               hoverColor: Colors.black,
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(200, 200, 200, 1),
                                    ),
                                    hintText: "请输入验证码",
                                    border: InputBorder.none
                          ),
                        )
                        ),
                        
                        new Text(
                          '获取验证码',
                          style: TextStyle(
                            color:Colors.grey,
                            fontSize: ScreenUtil().setSp(30),
                          )
                          )
                      ]
                    ),
                  )

                ],)
              ),
              Container(
                width:ScreenUtil().setWidth(610),
                height:ScreenUtil().setHeight(90),
                margin: EdgeInsets.only(top:ScreenUtil().setHeight(140)),
                //padding:EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(70)),
                child:
                FlatButton(
                color: Color.fromRGBO(68, 68, 68, 1),
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("登录",
                style: TextStyle(
                  fontSize:ScreenUtil().setSp(32)
                ),
                ),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  
                    Navigator.pushReplacementNamed(context, '/home');//路由跳转并传参

                },
              
              )
              )
             ],
           ),
         ),
      ),
    );
  }
}