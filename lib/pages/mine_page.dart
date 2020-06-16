import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1624);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light, //改变状态栏字体颜色
      child: Scaffold(
        backgroundColor: Color.fromRGBO(68, 68, 68, 1),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/ava.png',
                        width: ScreenUtil().setWidth(115),
                        //height: ScreenUtil().setHeight(115),
                        fit: BoxFit.cover,
                      ),
                      Column(children: [
                       Row(children:[
                          Text(
                          '一只会闹的猫',
                          style: TextStyle(
                              color: Color.fromRGBO(40, 40, 40, 1),
                              fontSize: ScreenUtil().setSp(32)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(16)),
                            color: Colors.white,
                          ),
                          child:  Text(
                          '积分：88',
                          style: TextStyle(
                              color: Color.fromRGBO(40, 40, 40, 1),
                              fontSize: ScreenUtil().setSp(32)),
                        ),
                        )
                       ])
                      ])
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
