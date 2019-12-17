//class MyApp extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return AppState();
//  }
//}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

//import 'package:flutter_second_app/view/home_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

//class AppState extends State<App> with TickerProviderStateMixin {
//  var _pageCtr;
//  int _tabIndex = 0;
//  @override
//  void initState() {
//    _pageCtr = PageController(initialPage: 0, keepPage: true);
//  }
//
//  @override
//  void dispose() {
//    _pageCtr.dispose();
//    super.dispose();
//  }
//
//  @override

//}

// 必须使用extends先继承，然后再多继承，使用关键字with
class AppState extends State<App> with TickerProviderStateMixin {
  var _pageCtr;
  int _tabIndex = 0;

// sca: 初始化？
  @override
  void initState() {
    // TODO: implement initState
//    super.initState();
    _pageCtr = PageController(initialPage: 0, keepPage: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
//    super.dispose();
  }

//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: PageView(
//          controller: _pageCtr,
//          physics: NeverScrollableScrollPhysics(),
//          children: <Widget>[
//            HomePage(),
//            ProjectPracticePage(),
//            WechatArticlePage(),
//          ],
//        ),
//        bottomNavigationBar: BottomNavigationBar(
//            currentIndex: _tabIndex,
//            type: BottomNavigationBarType.fixed,
//            fixedColor: Colors.deepPurpleAccent,
//            onTap: (index) => _tap(index),
//            items: [
//              BottomNavigationBarItem(
//                  title: Text('推荐'), icon: Icon(Icons.home)),
//              BottomNavigationBarItem(
//                  title: Text('项目'), icon: Icon(Icons.map)),
//              BottomNavigationBarItem(
//                  title: Text('公众号'), icon: Icon(Icons.contact_mail)),
//            ]),
//      ),
//    );
//  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//     蓝色是官方控件的意思吗？
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageCtr,
//          物理
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
//            控件数组
            HomePage(),
            HomePage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _tabIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.orange,
            onTap: (index) => _tap(index),
            items: [
              BottomNavigationBarItem(
                  title: Text('推荐'), icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  title: Text('推荐'), icon: Icon(Icons.home)),
            ]),
      ),
    );
  }

//  sca: 点击事件
  _tap(int index) {
    setState(() {
      _tabIndex = index;
      _pageCtr.jumpToPage(index);
    });
  }
}
