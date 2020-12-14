import 'package:flutter/material.dart';
import 'package:flutter_shop/config/index.dart';

class CircleCheckBox extends StatefulWidget {
  bool value = false;

  Function onChange;

  CircleCheckBox({this.value, this.onChange});

  @override
  _CircleCheckBoxState createState() => _CircleCheckBoxState();
}

class _CircleCheckBoxState extends State<CircleCheckBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GestureDetector(
        onTap: () {
          widget.value = !widget.value;
          widget.onChange(widget.value);
        },
        child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: widget.value
                ? Icon(
                    Icons.check_circle,
                    size: 28.0,
                    color: KColor.CHECKBOX_COLOR,
                  )
                : Icon(
                    Icons.panorama_fish_eye,
                    size: 28.0,
                    color: Colors.grey,
                  )),
      ),
    );
  }
}
