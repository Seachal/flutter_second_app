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

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
//    return null;
    return AppState();
  }
}


// 必须使用extends先继承，然后再多继承，使用关键字with 。 mixins 特性
class AppState extends State<MyApp> with TickerProviderStateMixin {
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
                  title: Text('推1'), icon: Icon(Icons.ac_unit)),
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
