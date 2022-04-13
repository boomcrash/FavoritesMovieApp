import 'package:flutter/material.dart';
class GradientBack extends StatelessWidget{
  String titulo="titulo";
  double altura= 0.0;


  GradientBack(this.titulo, this.altura);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: altura,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.black,
          ],
          begin: FractionalOffset(0.9,0),
          end:  FractionalOffset(1,1),
          stops: [0,0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(titulo,style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Lato",fontWeight: FontWeight.bold),),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}