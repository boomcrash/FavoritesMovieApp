import 'package:flutter/material.dart';
class GradientBack extends StatelessWidget{
  String titulo="titulo";
  double altura= 0.0;
  Color? primero;
  Color? segundo;
  double? begin1,begin2;
  double? end1,end2;
  double? stop1,stop2;

  GradientBack({Key? key,  required this.titulo,required this.altura,this.primero,this.segundo,this.begin1,this.begin2,this.end1,this.end2,this.stop1,this.stop2}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: altura,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            this.primero ?? Colors.purple,
            this.segundo ?? Colors.black,
          ],
          begin: FractionalOffset(begin1 ?? 0.9,begin2 ?? 0),
          end:  FractionalOffset(end1 ?? 1,end2 ?? 1),
          stops: [stop1 ?? 0,stop2 ?? 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(titulo,style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Lato",fontWeight: FontWeight.bold),),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}