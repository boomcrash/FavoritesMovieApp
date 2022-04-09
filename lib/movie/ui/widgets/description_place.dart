import 'package:favoritesmovieapp/movie/ui/widgets/button.dart';
import 'package:flutter/material.dart';




class DescriptionPlace extends StatelessWidget{


  String namePlace;
  int Star;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.Star,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description=Container(
      margin: const EdgeInsets.only(top: 20,right: 20,left: 20),
      child: Text(descriptionPlace,style:const TextStyle(fontFamily: "Lato-Italic",fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
      ),
    );

    final star=Container(
      margin: const EdgeInsets.only(
          top: 318.0,
          left: 3.0,
      ),
      child:const Icon(Icons.star, color: Colors.yellow) ,
    );

    final star_half=Container(
      margin: const EdgeInsets.only(
        top: 318.0,
        left: 3.0,
      ),
      child:const Icon(Icons.star_half, color: Colors.yellow) ,
    );

    final star_border=Container(
      margin: const EdgeInsets.only(
        top: 318.0,
        left: 3.0,
      ),
      child:const Icon(Icons.star_border, color: Colors.grey) ,
    );

    final titleStarts=Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            this.namePlace,
            style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(children: <Widget>[
          star,
          star,
          star,
          star_half,
          star_border
        ],),

      ],
    );
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          titleStarts,
          description,
          ButtonPurple("Ver mas"),
        ],
    );
  }

}