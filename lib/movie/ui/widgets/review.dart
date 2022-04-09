import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Review extends StatelessWidget{
  String path="assets/img/perfil.jfif";
  String name="Marco Solis";
  String details="1 review 3 photos";
  String comment="Es un lugar hermoso, lo visite la semana pasada";

  Review(this.path,this.name,this.details,this.comment);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star=Container(
      margin: const EdgeInsets.only(
        left: 3.0,
      ),
      child:const Icon(Icons.star, color: Colors.yellow) ,
    );

    final star_half=Container(
      margin: const EdgeInsets.only(
        left: 3.0,
      ),
      child:const Icon(Icons.star_half, color: Colors.yellow) ,
    );

    final star_border=Container(
      margin: const EdgeInsets.only(
        left: 3.0,
      ),
      child:const Icon(Icons.star_border, color: Colors.grey) ,
    );


    final photo=Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(path)
            )
        )
    );

    final userName=Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      child: Text(name, textAlign: TextAlign.left,style: const TextStyle(fontSize: 12,fontFamily: "Lato"),),
    );

    final userInfo=Row(
      children: [Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(details, textAlign: TextAlign.left,style: const TextStyle(fontSize: 13,fontFamily: "Lato",color: Colors.grey),),

    ),
    Row(children: <Widget>[
        star,
        star,
        star,
        star_half,
        star_border
        ],)
    ]);
    final userComment=Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(comment, textAlign: TextAlign.left,style: const TextStyle(fontSize: 13,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );

    final userDetails=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    );


    return Row(children: <Widget>[
      photo,
      userDetails
    ],);
  }

}