import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/photo_page.dart';
import 'package:flutter_trip/pages/about_page.dart';

class TabNavigation extends StatefulWidget {
  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {

  final PageController _controller = PageController(
    initialPage: 0,
  );

  final _defultColor = Colors.grey;
  final _activeColor = Colors.green;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          PthotoPage(),
          AboutPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _defultColor),
            activeIcon: Icon(Icons.home, color: _activeColor),
            title: Text('首页',
              style: TextStyle(
                color: _currentIndex !=1 ? _defultColor : _activeColor
              ))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: _defultColor),
            activeIcon: Icon(Icons.search, color: _activeColor),
            title: Text('搜索',
            style: TextStyle(
              color: _currentIndex !=2 ? _defultColor : _activeColor
            ),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo, color: _defultColor),
            activeIcon: Icon(Icons.photo, color: _activeColor),
            title: Text('旅拍',
            style: TextStyle(
              color: _currentIndex !=3 ? _defultColor : _activeColor
            ),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: _defultColor),
            activeIcon: Icon(Icons.settings, color: _activeColor),
            title: Text('关于我',
            style: TextStyle(
              color: _currentIndex !=4 ? _defultColor : _activeColor
            ),)
          )
        ],
      ),
    );
  }
}