import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonGreen();
  }

}
class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool favorito=false;

  void onPressedFav() {
    setState(() {
      favorito=!this.favorito;
    });
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: this.favorito?Icon(Icons.favorite):Icon(Icons.favorite_border),
    );
  }

  }
