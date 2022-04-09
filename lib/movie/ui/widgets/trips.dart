import 'package:favoritesmovieapp/movie/ui/widgets/home_trips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Trips extends StatelessWidget{
  String nombre;
  String foto;

  Trips(this.nombre, this.foto);

  @override
  Widget build(BuildContext context) {

    void verLugar(){
      Scaffold.of(context).showSnackBar(
          const SnackBar(content: Text("Abriendo el lugar ..."))
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeTrips(),));
    }

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

    final tripName=Container(
      margin: const EdgeInsets.only(
        top: 25,
        left: 20,
      ),
      child: Text(nombre, textAlign: TextAlign.left,style: const TextStyle(fontSize: 12,fontFamily: "Lato",fontWeight: FontWeight.bold),),
    );

    final trips=Container(
        child: InkWell(
          onTap: verLugar,
          child: Row(
            children: [
              photo,
              tripName,
            ],
          ),
        )
    );
    return trips;
  }

}