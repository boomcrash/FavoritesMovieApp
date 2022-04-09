
import 'package:favoritesmovieapp/movie/ui/screens/mostrar_comentarios_destacados.dart';
import 'package:flutter/material.dart';



class ButtonPurple extends StatelessWidget{
  String texto="Ver mas";

  ButtonPurple(this.texto);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final button=Container (
        margin: const EdgeInsets.only(
            top: 5.0,
            left: 5.0,
            right: 5.0,
          bottom: 5.0,

        ),
        child: InkWell(
          onTap: (){
            Scaffold.of(context).showSnackBar(
              const SnackBar(content: Text("Redirigiendo ..."))
            );
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MostrarDestacados(),));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
            height: 50,
            width: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: [
                    Colors.cyan,
                    Colors.greenAccent,
                  ],
                  begin: FractionalOffset(0.2, 0),
                  end: FractionalOffset(1, 0.6),
                  stops: [0,1],
                  tileMode: TileMode.clamp,
                )
            ),
            child: Center(
              child: Text(texto,
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "Lato",
                    color: Colors.white
                ),
              ),
            ),
          ),
        )
    );
    return button;
  }

}