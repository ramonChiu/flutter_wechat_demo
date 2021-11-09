import 'package:flutter/material.dart';
import 'package:wechat_demo/root_page.dart';
import 'package:wechat_demo/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',//安卓需要
      showSemanticsDebugger: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromARGB(1, 0, 0, 0),
        splashColor: Color.fromARGB(1, 0, 0, 0),
      ),
      home: RootPage(),
    );
  }
}

