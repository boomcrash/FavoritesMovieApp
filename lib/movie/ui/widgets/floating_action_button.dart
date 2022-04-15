import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class FloatingActionButtonGreen extends StatefulWidget{
  final IconData iconData;
  final VoidCallback? onPressed;

  FloatingActionButtonGreen({required this.iconData, this.onPressed});

  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonGreen();
  }

}
class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool favorito=false;

  /*void onPressedFav() {
    setState(() {
      favorito=!this.favorito;
    });
  }*/

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: this.favorito?Icon(Icons.favorite):Icon(Icons.favorite_border),
    );
  }

  }
