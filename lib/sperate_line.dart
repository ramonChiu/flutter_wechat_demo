import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wechat_demo/utils.dart';

class SperateLine extends StatelessWidget{
  final double height;
  final Color color;
  const SperateLine({this.height = 0.5, this.color = Colors.grey});
  @override
  Widget build(BuildContext context) {

    return  Container(
      color: Colors.white,
      width: Utils.screen_w,
      height: height,
      child: Container(
        margin: EdgeInsets.only(left: 50),
        color: color,
        width: Utils.screen_w - 50,
      ),
    );

      Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          height: height,
          width: 50,
        ),
        Container(
          height: height,
          width: Utils.screen_w - 50,
          color: color,
        )
      ],
    );
  }

}