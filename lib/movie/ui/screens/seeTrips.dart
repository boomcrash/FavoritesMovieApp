import 'package:favoritesmovieapp/movie/ui/widgets/trips.dart';
import 'package:flutter/material.dart';
class SeeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Scaffold(

            body: Stack(
              children: [

                Container(
                  margin: EdgeInsets.only(
                      top: 50
                  ),
                  child: ListView(
                    children: <Widget>[
                      Trips("MALECON 2000", "assets/img/mirador1.jpg"),
                      Trips("MIRADOR GENERAL", "assets/img/mirador2.jpg"),
                      Trips("ALA NOTE MALECON", "assets/img/mirador3.jpg"),
                      Trips("PEDRO CARBO", "assets/img/mirador4.jpg"),
                      Trips("ESTATUA SIMON BOLIVAR", "assets/img/mirador2.jpg"),
                      Trips("9 DE OCTUBRE", "assets/img/mirador1.jpg"),
                      Trips("BAHIA SUR", "assets/img/mirador3.jpg"),
                      Trips("CENTRO MALECON", "assets/img/mirador4.jpg"),
                      Trips("RESTAURANTE CONCH", "assets/img/mirador2.jpg"),
                      Trips("HOTEL RAMINBA", "assets/img/mirador1.jpg"),
                      Trips("TUNEL SAN JACINTO", "assets/img/mirador2.jpg"),
                      Trips("LAS PEÑAS", "assets/img/mirador4.jpg"),
                      Trips("IGLESIA LAS PEÑAS", "assets/img/mirador3.jpg"),
                      Trips("RIO SANTAI", "assets/img/mirador2.jpg"),
                      Trips("CENTRO COMERCIAL - MALECON", "assets/img/mirador1.jpg")
                    ],),
                )
                ,
                Container(
                    color: Colors.blue,
                    height: 80.0,
                    child: const Center(
                      child: Text("Mensajes Destacados",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Icon(Icons.menu, color: Colors.black,size: 40) ,
                ),
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    margin: EdgeInsets.only(top: 75),
                    color: Colors.blue,
                    height: 23.0,
                  ),
                )
                ,
              ],
            )


        )


      //bottomNavigationBar: ,
      //floatingActionButton: ,
      //floatingActionButtonLocation: ,
      //floatingActionButtonAnimator: ,

      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );

  }

}

    class CurveClipper extends CustomClipper<Path> {
      @override
      Path getClip(Size size) {
        int curveHeight = 40;
        Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
        Offset endPoint = Offset(size.width, size.height - curveHeight);

        Path path = Path()
          ..lineTo(0, size.height - curveHeight)
          ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
          ..lineTo(size.width, 0)
          ..close();

        return path;
      }

      @override
      bool shouldReclip(CustomClipper<Path> oldClipper) => false;
    }

