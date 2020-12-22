import 'package:flutter/material.dart';
import 'package:flutter_shop/config/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/page/home/home_page.dart';
import 'package:flutter_shop/page/user/member_page.dart';
import 'package:flutter_shop/page/category/category_page.dart';
import 'package:flutter_shop/page/cart/cart_page.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<BottomNavigationBarItem> _tabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: KString.HOME_TITLE,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      label: KString.CATEGORY_TITLE,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: KString.CART_TITLE,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: KString.MENMBER_TITLE,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _tabs,
        onTap: (index) {
          this.setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          CategoryPage(),
          MemberPage(),
          CartPage(),
        ],
      ),
    );
  }
}
