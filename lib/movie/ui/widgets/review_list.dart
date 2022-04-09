import 'package:favoritesmovieapp/movie/ui/widgets/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final lista=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/perfil.jfif","Jorge Vera","2 review 1 photos","Me motive a ir y no me arrepiento!"),
        Review("assets/img/perfil.jfif","Marco Solis","1 review 3 photos","Es un lugar hermoso, lo visite la semana pasada"),
        Review("assets/img/perfil.jfif","Marlin Borante","3 review 2 photos","Me fascino sus encantos naturales"),
      ],
    );
    return lista;
  }

}