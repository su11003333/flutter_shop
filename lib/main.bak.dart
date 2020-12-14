import 'package:flutter/material.dart';
import 'package:flutter_shop/component/show_message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/component/small_button.dart';
import 'package:flutter_shop/component/item_text_field.dart';
import 'package:flutter_shop/component/logo_container.dart';
import 'package:flutter_shop/component/circle_check_box.dart';
import 'package:flutter_shop/utils/router_util.dart';
import 'package:flutter_shop/call/call.dart';
import 'package:flutter_shop/call/notify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    Call.addCallBack('Test',callBack);
  }

  callBack(data){
    print(data['name']);
  }

  int _counter = 0;

  bool checked = false;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
    // MessageWidget.show('測試組件');
    RouterUtil.toLoginPage(context, 'hello');
    // Call.dispatch('Test',data:{'name':'kevin','islogin':true});


  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    //初始化ScreenUtil才能攻下面組建參考使用

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            KSmallButton(
              text: '小按鈕',
              onPressed: () {
                print('點擊了小按鈕');
              },
            ),
            ItemTextField(
              icon: Icon(Icons.person),
              controller: TextEditingController(),
              focusNode: FocusNode(),
              title: '用戶名',
              hintText: '請輸入用戶名',
              obscureText: false,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            LogoContainer(),
            SizedBox(height: 60),
            CircleCheckBox(
              value: checked,
              onChange: (val) {
                setState(() {
                  checked = val;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
