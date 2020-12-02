import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KMediumButton extends StatelessWidget {
  String text;
  Color color;
  Function onPressed;

  KMediumButton({String text, Function onPressed, Color color}) {
    this.text = text;
    this.onPressed = onPressed;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //ScreenUtil 可以等比處理下面尺寸
      width: ScreenUtil().setWidth(300),
      height: ScreenUtil().setHeight(70),
      child: FlatButton(
        onPressed: () {
          this.onPressed();
        },
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(28),
          ),
        ),
        color: this.color,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
