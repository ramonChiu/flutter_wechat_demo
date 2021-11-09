import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wechat_demo/discover_child_page.dart';

import 'discover_child_page.dart';

class DiscoverCell extends StatelessWidget{
  const DiscoverCell({
    Key? key,
    this.subTitle,
    this.subImageName,
    required this.title,
    required this.imageName,
    this.callBack = null,
  }) :  assert(title != null, 'title 不能为空'),
        assert(imageName != null, 'imageName 不能为空'),
        super(key: key);

  final String title;
  final String? subTitle;
  final String imageName;
  final String? subImageName;
  final Function? callBack;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return DiscoverChildPage();
            })
          );
        },
        child: Container(
          height: 45,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    //图标
                    Image(image: AssetImage(imageName),width: 20,),
                    //间隙
                    SizedBox(width: 15,),
                    //titile
                    Text(title),
                  ],

                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      subTitle != null ? Text(subTitle!):Text(''),
                      subImageName != null ? Image(image: AssetImage(subImageName!),width: 10,):Container(),
                      Image(image: AssetImage('images/icon_right.png'),width: 15,),
                    ],
                  )
              ),

            ],
          ),
        ),

      );


  }

}
