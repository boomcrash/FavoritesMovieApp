import 'package:flutter/cupertino.dart';

import '../../User/model/user.dart';

class Movie{
  String id;
  String nombre;
  String tipo;
  String anio;
  String urlImagen;
  int? likes;
  final User? owner;

  Movie( {Key? key ,this.owner,required this.id,required this.nombre,required this.tipo,required this.anio,required this.urlImagen,this.likes});


}