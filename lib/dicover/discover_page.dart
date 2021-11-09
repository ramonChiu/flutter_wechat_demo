import 'package:flutter/material.dart';
import 'package:wechat_demo/sperate_line.dart';
import 'package:wechat_demo/utils.dart';

import 'discover_cell.dart';
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  Color _themColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    final w = Utils.screen_w;
    final h = Utils.screen_h;
    final _th = 0.7;
    print('$w --- $h');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,//这是为了安卓设置
        title: Text('发现'),
        backgroundColor: _themColor,
        elevation: 0.0,//隐藏阴影效果
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: [
              DiscoverCell(
                imageName: 'images/朋友圈.png',
                title: '朋友圈',
              ),
              SizedBox(
                height: 10,
              ),
              DiscoverCell(
                imageName: 'images/扫一扫2.png',
                title: '扫一扫',
              ),
              // SperateLine(height: 0.5,),
              DiscoverCell(
                imageName: 'images/摇一摇.png',
                title: '摇一摇',
              ),
              SizedBox(
                height: 10,
              ),
              DiscoverCell(
                imageName: 'images/看一看.png',
                title: '看一看',
              ),
              SperateLine(height: 0.5,),
              DiscoverCell(
                imageName: 'images/搜一搜.png',
                title: '搜一搜',
              ),

              SizedBox(
                height: 10,
              ),
              DiscoverCell(
                imageName: 'images/附近的人.png',
                title: '附近的人',
              ),
              SizedBox(
                height: 10,
              ),
              DiscoverCell(
                imageName: 'images/购物.png',
                title: '购物',
                subTitle: '618限时特价',
                subImageName: 'images/badge.png',
              ),
              SperateLine(height: 0.5,),
              DiscoverCell(
                imageName: 'images/游戏.png',
                title: '游戏',
              ),
              SizedBox(
                height: 10,
              ),
              DiscoverCell(
                imageName: 'images/小程序.png',
                title: '小程序',
              ),

            ],
          ),
          color: _themColor,
        )
      ),
    );
  }
}
