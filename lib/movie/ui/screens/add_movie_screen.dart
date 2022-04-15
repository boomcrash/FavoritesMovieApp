
import 'dart:io';

import 'package:favoritesmovieapp/movie/ui/widgets/card_image.dart';
import 'package:favoritesmovieapp/movie/ui/widgets/title_input_location.dart';
import 'package:favoritesmovieapp/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/gradient_back.dart';
class AddMovieScreen extends StatefulWidget{
  File? image;

  AddMovieScreen({Key? key, this.image});

  @override
  State<StatefulWidget> createState() {

    return _AddMovieScreen();
  }

}

class _AddMovieScreen extends State<AddMovieScreen>{
  @override
  Widget build(BuildContext context) {
    final _contollerTitleMoive=TextEditingController();
    final _contollerDescriptionMovie =TextEditingController();
    final _contollerLocationMovie =TextEditingController();
    return Scaffold(
    body: Stack(
      children: <Widget>[
      GradientBack(titulo:"",altura: 300,primero: Colors.cyan,segundo: Colors.deepPurple,begin1:0.2 ,begin2: 0,end1: 1,end2: 0.6,stop1: 0,stop2:0.6 ,),
      Row(
      children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 10
        ),
        padding: EdgeInsets.only( left: 5),
        child: SizedBox(
            width: 45,
            height: 45,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_left,color: Colors.white,size: 45,),
              onPressed:(){
                Navigator.pop(context);
              },
            ),
        ),
        ) // Container// <Widget>[]
      ],
      ),
        Flexible(child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 45,left: 10,right: 10),
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.center,
            children: [
              Text("AGREGA TU PELICULA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          )
        )
        ),

        Container(
          margin:EdgeInsets.only(
              top: 120,
              bottom: 20,
          ),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: CardImage(imagen: "widget.image.path", width: 400, height: 250, iconData: Icons.camera_alt),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextInput(hintText:"Title" ,controller: _contollerTitleMoive,inputType: TextInputType.text,maxLines: 1,),
              ),
              TextInput(//Description
                hintText: "Description",
                inputType: TextInputType.multiline,
                maxLines: 4,
                controller: _contollerDescriptionMovie,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextInputLocation(hintText: "Agragr Ubicacion", controller: _contollerLocationMovie, iconData: Icons.location_on_outlined),
              )// TextInput

            ],
          ),
        )
        // Row
      ], // <Widget>[]
      ), // Stack
    ); // Scaffold
  }
  
}