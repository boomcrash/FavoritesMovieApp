import 'package:favoritesmovieapp/movie/ui/widgets/comentarios_destacados.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MostrarDestacados extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

                    ComentariosDestacados("Juan matias", "10 review 10 photos", "Lugar emopcioannte y bonito", "assets/img/mirador1.jpg"),
                    ComentariosDestacados("Barbaro Metelin", "10 review 10 photos", "Espextaxular para ir en fmailia", "assets/img/mirador2.jpg"),
                    ComentariosDestacados("Chota Chotero", "10 review 10 photos", "Maravillosamente esplendido", "assets/img/mirador3.jpg"),
                    ComentariosDestacados("Carero Carin", "10 review 10 photos", "Es algo maravilloso}", "assets/img/mirador4.jpg"),
                    ComentariosDestacados("Karla Marrana", "10 review 10 photos", "Ideal para estar de camping", "assets/img/mirador2.jpg"),
                    ComentariosDestacados("Rosa Pelagato", "10 review 10 photos", "Me alegro hber cnocido el lugar", "assets/img/mirador3.jpg"),
                    ComentariosDestacados("Jorge Pichula", "10 review 10 photos", "Sinceramente fue fabuloso", "assets/img/mirador1.jpg"),
                    ComentariosDestacados("Jorge Nitales", "10 review 10 photos", "Me lleve una gran expectativa", "assets/img/mirador4.jpg"),
                    ComentariosDestacados("Devora Meltrozo", "10 review 10 photos", "Menuda sorpresa este lugar", "assets/img/mirador2.jpg"),
                    ComentariosDestacados("Mario Vecerro", "10 review 10 photos", "Deben ir con sus familiares", "assets/img/mirador4.jpg"),
                    ComentariosDestacados("Carlos Marin", "10 review 10 photos", "Es de no creer este sitio", "assets/img/mirador1.jpg"),
                    ComentariosDestacados("Roberto Carlos", "10 review 10 photos", "Parece que fuera unico en el pais", "assets/img/mirador3.jpg"),
                    ComentariosDestacados("Martin Vegetti", "10 review 10 photos", "No he visto lugar como este", "assets/img/mirador2.jpg"),

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