import 'package:flutter/material.dart';
import 'package:wechat_demo/mine/mine_header.dart';
import 'package:wechat_demo/sperate_line.dart';

import 'dicover/discover_cell.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MediaQuery.removePadding(
            context: context,
            child:ListView(
            children: [
              MineHeader(),
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
            removeTop: true,
          ),


          Positioned(
            child: Image(image: AssetImage('images/相机.png'),width: 30,),
            right: 30,
            top: 40,
          ),

        ],
      ),
    );
  }
}

