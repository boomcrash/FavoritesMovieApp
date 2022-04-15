import 'package:favoritesmovieapp/movie/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final lista=Container(
      height: 300,
      width: 400,
      child: ListView(

        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(imagen: "assets/img/mirador1.jpg",iconData: Icons.favorite_border,width: 400,height: 250,),
          CardImage(imagen: "assets/img/mirador2.jpg",iconData: Icons.favorite_border,width: 400,height: 250,),
          CardImage(imagen: "assets/img/mirador3.jpg",iconData: Icons.favorite_border,width: 400,height: 250,),
          CardImage(imagen: "assets/img/mirador4.jpg",iconData: Icons.favorite_border,width: 400,height: 250,),
        ],
      ),
    );
    return lista;
  }

}