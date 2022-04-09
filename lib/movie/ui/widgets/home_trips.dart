import 'package:favoritesmovieapp/movie/ui/widgets/description_place.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/header_appbar.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Stack(children: <Widget>[

    ListView(children: <Widget>[
    DescriptionPlace("MIRADOR 2000", 4, "Este lugar es demasiado hermoso, el mismo se encuentra ubicado en Guayaquil \n muy cerca del mlecon 2000 y \n es uno delos lugares mas visitados por la zona"),
    ReviewList(),
    ],),

    HeaderAppBar(),

    ]);
  }

}