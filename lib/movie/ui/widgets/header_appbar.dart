import 'package:favoritesmovieapp/movie/ui/widgets/card_image_list.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appbar=Stack(
      children: <Widget>[
        GradientBack("DESTACADO"),
        CardImageList()
      ],
    );
    return appbar;
  }

}