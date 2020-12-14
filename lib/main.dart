import 'package:flutter/material.dart';
import 'package:flutter_shop/config/index.dart';
import 'package:flutter_shop/page/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: KString.MAIN_TITLE,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: KColor.PRIMARY_COLOR,
      ),
      home: MainPage(),
    );
  }
}
