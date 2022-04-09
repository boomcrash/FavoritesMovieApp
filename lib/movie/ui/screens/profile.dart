import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    void accion(){
      print("se presiono el boton");
    }

    final text=Container(
      width: 350,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text("PERFIL",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );

    final background=Container(
      height: 400,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.deepPurple,
              ],
              begin: FractionalOffset(0.2,0),
              end:  FractionalOffset(1,0.6),
              stops: [0,0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: Row(
        children: [
          text,
          Icon(Icons.settings),
        ],
      ),
      alignment: Alignment(-0.9,-0.6),
    );

    final background_oculto=Container(
      height: 245,
      alignment: Alignment(-0.9,-0.6),
    );

    final image_back=Container(
        margin: const EdgeInsets.only(
          top: 110,
          left: 17,
        ),
        width: 85,
        height: 85,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white
        )
    );

    final photo=Container(
        margin: const EdgeInsets.only(
          top: 112.5,
          left: 20,
        ),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/perfil.jfif")
            )
        )
    );

    final nombre=Container(
      margin: const EdgeInsets.only(
        top: 125,
        left: 120,
      ),
      child: Text("Milton Elizalde", textAlign: TextAlign.left,style: const TextStyle(fontSize: 15,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );

    final correo=Container(
      margin: const EdgeInsets.only(
        left: 120,
      ),
      child: Text("alxms_12as@sauua.ax", textAlign: TextAlign.left,style: const TextStyle(color: Colors.grey,fontSize: 15,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );


    final datos=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nombre,
        correo
      ],
    );

    final buttons=Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 200,
              left: 22
          ),
          child: Row(
            children: [
              FloatingActionButton(
                  backgroundColor: Colors.white,
                  mini: true,
                  tooltip: "Fav",
                  onPressed: accion,
                  child: Icon(Icons.description,color: Colors.blue,)
              ),
          Container(
            margin: EdgeInsets.only(
            left: 22
          ),
            child:
            FloatingActionButton(
                backgroundColor: Colors.white,
                mini: true,
                tooltip: "Fav",
                onPressed: accion,
                child: Icon(Icons.wallet_giftcard,color: Colors.blue)
            ),
          ),

              Container(
                width: 80,
                height: 80,
                margin:  EdgeInsets.only(
                  left: 22
                ),
                child:
                FloatingActionButton(
                    backgroundColor: Colors.white,
                    mini: true,
                    tooltip: "Fav",
                    onPressed: accion,
                    child: Icon(Icons.add_circle_outline,color: Colors.grey,size: 70,)
                ),
              ),
              Container(
              margin: EdgeInsets.only(
              left: 22
              ),
              child:
              FloatingActionButton(
                  backgroundColor: Colors.white,
                  mini: true,
                  tooltip: "Fav",
                  onPressed: accion,
                  child: Icon(Icons.wallet_giftcard,color: Colors.blue)
              ),
              ),

              Container(
                margin: EdgeInsets.only(
                    left: 22
                ),
                child:
                  FloatingActionButton(
                      backgroundColor: Colors.white,
                      mini: true,
                      tooltip: "Fav",
                      onPressed: accion,
                      child: Icon(Icons.wallet_giftcard,color: Colors.blue)
                  ),
                ),
            ],
          ),
        ),

      ],
    );

    final min_card=Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.only(
          top: 160,
          left: 55,
          right: 20,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
            )
          ]
      ),
      child: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(top: 10),),
            Text("Lugar maravilloso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Este lugar se caracteriza por ser uno  delos mas visitados",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
            Text("Steps 123,123,123",style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );


    final card=Container(
      height: 200,
      width: 370,
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,

      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/mirador2.jpg"),
            fit: BoxFit.cover,
          ),borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
            )
          ]
      ),

    );

    final contenedor=Container(
      width: 370,
      height: 260,
      child: Stack(
        children: [
          card,
          min_card,
        ],
      ),
    );

    final lista=Container(
      margin: EdgeInsets.only(
        top: 245
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          contenedor,
          contenedor,
          contenedor
        ],
      ),
    );

    return Stack(
      children: [

        background,
        lista,
        background_oculto,
        image_back,
        photo,
        datos,
        buttons,

      ],
    );


  }

}