import 'package:flutter/material.dart';

import 'chat_page.dart';
import 'dicover/discover_page.dart';
import 'friends_page.dart';
import 'mine_page.dart';
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List _pages = [ChatPage(),FriendsPage(),DiscoverPage(),MinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
              print('index:$_currentIndex');
            });
          },
          items: [
            BottomNavigationBarItem(icon: Image(image: AssetImage('images/tabbar_chat.png'),width: 20,),
                activeIcon: Image(image: AssetImage('images/tabbar_chat_hl.png'),width: 20,),
                label: '微信',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: '通讯录'),
            BottomNavigationBarItem(icon: Icon(Icons.history),label: '发现'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: '我'),],
        ),
        body: _pages[_currentIndex],
    );
  }
}

