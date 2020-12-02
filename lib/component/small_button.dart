import 'package:flutter/material.dart';
import 'package:flutter_shop/config/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KSmallButton extends StatelessWidget {
  String text;
  Function onPressed;

  KSmallButton({String text, Function onPressed}) {
    this.text = text;
    this.onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //ScreenUtil 可以等比處理下面尺寸
      width: ScreenUtil().setWidth(160),
      height: ScreenUtil().setHeight(70),
      child: InkWell(
        //InkWell添加點擊事件
        onTap: () {
          this.onPressed();
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: KColor.BUY_BUTTON_COLOR,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
