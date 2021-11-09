import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineHeader extends StatefulWidget {
  const MineHeader({Key? key}) : super(key: key);

  @override
  State<MineHeader> createState() => _MineHeaderState();
}

class _MineHeaderState extends State<MineHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100,left: 20,right: 10,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('images/Hank.png'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ramon",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '微信号：qlp3333'
                    )
                  ],
              ),
            ],
          ),
          Image(image: AssetImage('images/icon_right.png'),width: 15,),
        ],
      )
    );
  }
}
