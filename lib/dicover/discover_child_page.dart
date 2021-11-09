import 'package:flutter/material.dart';

class DiscoverChildPage extends StatelessWidget {
  const DiscoverChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('子页面')
      ),
      body: Text('二级页面')
    );
  }
}
