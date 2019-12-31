

import './firstPage.dart';
import './myInfo.dart';
import './messages.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int bottomTabIndex = 0;
  List<Widget> pages = [
    FirstPage(),
    FirstPage(),
    FirstPage(),
    Messages(),
    MyInfo(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.black,
      //   selectedIconTheme: IconThemeData(color: Colors.yellow),
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   unselectedIconTheme: IconThemeData(color: Colors.black),
      //   unselectedLabelStyle: TextStyle(color: Colors.black),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('咸鱼', style: TextStyle(color: Colors.black),),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text('鱼塘', style: TextStyle(color: Colors.black),),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add),
      //       title: Text('发布', style: TextStyle(color: Colors.black),),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       title: Text('消息', style: TextStyle(color: Colors.black),),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('我的', style: TextStyle(color: Colors.black),),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
        child: buildBottomBar(),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 1.0,
        backgroundColor: Colors.yellow,
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[bottomTabIndex]
    );
  }

  buildBottomBar(){
    return new Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new GestureDetector(
            onTap: (){
              setState(() {
                bottomTabIndex = 0;
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.home, color: bottomTabIndex == 0 ? Colors.yellow : Colors.black,),
                new Text('首页'),
              ],
            ),
          ),
          new GestureDetector(
            onTap: (){
              setState(() {
                bottomTabIndex = 1;
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.mic, color: bottomTabIndex == 1 ? Colors.yellow : Colors.black,),
                new Text('鱼塘'),
              ],
            ),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.home),
              new Text('发布'),
            ],
          ),
          new GestureDetector(
            onTap: (){
              setState(() {
                bottomTabIndex = 3;
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.message, color: bottomTabIndex == 3 ? Colors.yellow : Colors.black,),
                new Text('消息'),
              ],
            ),
          ),
          new GestureDetector(
            onTap: (){
              setState(() {
                bottomTabIndex = 4;
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.person, color: bottomTabIndex == 4 ? Colors.yellow : Colors.black,),
                new Text('我的'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

