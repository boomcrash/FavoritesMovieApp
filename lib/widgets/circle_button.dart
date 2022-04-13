import 'package:flutter/material.dart';
class CircleButton extends StatefulWidget{
  final VoidCallback onPressed;
  late bool mini;
  var icon;
  late double iconSize;
  var color;


  CircleButton(@required this.onPressed, this.mini, this.icon, this.iconSize, this.color);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CircleButton();
  }

}

class _CircleButton extends State<CircleButton>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: widget.onPressed,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Colors.white,
          ),
        ),
    );
  }

}