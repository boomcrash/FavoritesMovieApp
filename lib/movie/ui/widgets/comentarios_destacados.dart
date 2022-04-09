
import 'package:flutter/material.dart';
class ComentariosDestacados extends StatelessWidget{
  String nombre;
  String descripcion;
  String detalle;
  String foto;


  ComentariosDestacados(this.nombre, this.descripcion, this.detalle, this.foto);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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
                image: AssetImage(foto)
            )
        )
    );

    final star=Container(
      width: 80,
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Icon(Icons.star, color: Colors.black,size: 40) ,
    );

    final userName=Container(
      margin: const EdgeInsets.only(
        top: 25,
        left: 20,
      ),
      child: Text(nombre, textAlign: TextAlign.left,style: const TextStyle(fontSize: 12,fontFamily: "Lato"),),
    );

    final userInfo=Row(
        children: [Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(descripcion, textAlign: TextAlign.left,style: const TextStyle(fontSize: 13,fontFamily: "Lato",color: Colors.grey),),

        ),

        ]);
    final userComment=Container(
      width: 200,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(detalle, textAlign: TextAlign.left,style: const TextStyle(fontSize: 13,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );

    final userDetails=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    );

    final comentarios=Row(
          children: [
            photo,
            userDetails,
            star
          ],
    );
    return comentarios;



}

}